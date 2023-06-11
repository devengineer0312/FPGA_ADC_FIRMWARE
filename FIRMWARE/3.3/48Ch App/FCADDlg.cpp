#include "stdafx.h"
#include "FCAD.h"
#include "FCADDlg.h"
#include "math.h"
#include "afxsock.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

LONG  AD_FIFO_Size = 0x1000000; //16M采样点
LONG  DA_BUF_Size  = 0x20000;   //128K采样点
LONG  AD_MAXVALUE  = 0xffff;	//16bitAD量化最大值
LONG  DA_MAXVALUE  = 0xffff;    //DA位数,计算波形时使用

#define MAX_WRITE_SIZE (32*1024*1024)
#define MAX_AD_CH 48
#define DISPLAY_CNT 3000

// Define commands
#define DO_CMD		1
#define DI_CMD		2
#define DI_COMPLETE	8
#define START_CMD	3
#define STOP_CMD	4

//计算波形
void CmpWave(int sltwave,int num,double ppValue,PWORD waveData)
{
	double pi=3.14159;
	int i;
	switch (sltwave) 
	{
	case 0:	//SIN
		for(i=0;i<num;i++)
			waveData[i]=(WORD)((DA_MAXVALUE/2.0)*(sin((2.0*pi)*(double)i/(double)num)+1.0));
		break;
	case 1://square
		for(i=0;i<num/2;i++)
		{
			waveData[i]=(USHORT)DA_MAXVALUE;
			waveData[i+num/2]=0;
		}
		break;
	default:
		;
	}
	for(i=0;i<num;i++)
	{
		waveData[i]=(WORD)(waveData[i]*ppValue);
	}
}

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFCADDlg dialog

CFCADDlg::CFCADDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFCADDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFCADDlg)
	m_strOutput = _T("");
	m_nTrigLen = 0;
	m_nDA0Freq = 0;
	m_nDA1Cnt = 0;
	m_nDA0Cnt = 0;
	m_nDA1Freq = 0;
	m_bEnDA0 = FALSE;
	m_bEnDA1 = FALSE;
	m_strDI = _T("");
	m_strDO = _T("");
	m_fLevel = 0.0f;
	m_nTrigDelay = 0;
	m_bLoopDA0 = FALSE;
	m_lCycleCntDA0 = 0;
	m_lCycleCntDA1 = 0;
	m_bLoopDA1 = FALSE;
	m_nADFreq = 0;
	m_fCnt = 0.0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CFCADDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFCADDlg)
	DDX_Control(pDX, IDC_CMBADRG, m_cmbADRg);
	DDX_Control(pDX, IDC_CMBDISCH, m_cmbDisch);
	DDX_Control(pDX, IDC_CMBSRC, m_cmbSrc);
	DDX_Control(pDX, IDC_CMBDA1WAV, m_cmbDA1Wav);
	DDX_Control(pDX, IDC_CMBDA0WAV, m_cmbDA0Wav);
	DDX_Control(pDX, IDC_CMBMODE, m_cmbMode);
	DDX_Text(pDX, IDC_EDTDIS, m_strOutput);
	DDX_Text(pDX, IDC_EDTTRIGLEN, m_nTrigLen);
	DDX_Text(pDX, IDC_EDTDA0FREQ, m_nDA0Freq);
	DDX_Text(pDX, IDC_EDTDA1CNT, m_nDA1Cnt);
	DDV_MinMaxLong(pDX, m_nDA1Cnt, 1, 128000);
	DDX_Text(pDX, IDC_EDTDA0CNT, m_nDA0Cnt);
	DDV_MinMaxLong(pDX, m_nDA0Cnt, 1, 128000);
	DDX_Text(pDX, IDC_EDTDA1FREQ, m_nDA1Freq);
	DDX_Check(pDX, IDC_CHKDA0, m_bEnDA0);
	DDX_Check(pDX, IDC_CHKDA1, m_bEnDA1);
	DDX_Text(pDX, IDC_EDTSDI, m_strDI);
	DDX_Text(pDX, IDC_EDTSDO, m_strDO);
	DDX_Text(pDX, IDC_EDTTRIGLEVEL, m_fLevel);
	DDV_MinMaxFloat(pDX, m_fLevel, -5.f, 5.f);
	DDX_Text(pDX, IDC_EDTTRIGDELAY, m_nTrigDelay);
	DDX_Check(pDX, IDC_CHKDA0LOOP, m_bLoopDA0);
	DDX_Text(pDX, IDC_EDTDA0CYCNT, m_lCycleCntDA0);
	DDV_MinMaxInt(pDX, m_lCycleCntDA0, 0, 32767);
	DDX_Text(pDX, IDC_EDTDA1CYCNT, m_lCycleCntDA1);
	DDV_MinMaxInt(pDX, m_lCycleCntDA1, 0, 32767);
	DDX_Check(pDX, IDC_CHKDA1LOOP, m_bLoopDA1);
	DDX_Text(pDX, IDC_EDTFREQ, m_nADFreq);
	DDX_Text(pDX, IDC_EDT1CHCNT, m_fCnt);
	DDV_MinMaxDouble(pDX, m_fCnt, 1.e-003, 50.);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFCADDlg, CDialog)
	//{{AFX_MSG_MAP(CFCADDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTNSTART, OnBtnstart)
	ON_BN_CLICKED(IDC_BTNSTOP, OnBtnstop)
	ON_BN_CLICKED(IDC_BTNSINGLE, OnBtnsingle)
	ON_WM_TIMER()
	ON_WM_CLOSE()
	ON_WM_DESTROY()
	ON_CBN_SELCHANGE(IDC_CMBMODE, OnSelchangeCmbmode)
	ON_BN_CLICKED(IDC_BTNDA0, OnBtnda0)
	ON_BN_CLICKED(IDC_BTNDA1, OnBtnda1)
	ON_BN_CLICKED(IDC_BTNGETDI, OnBtngetdi)
	ON_BN_CLICKED(IDC_BTNSETDO, OnBtnsetdo)
	ON_BN_CLICKED(IDC_BTNCLR, OnBtnclr)
	ON_BN_CLICKED(IDC_BTNSETOFFSET, OnBtnsetoffset)
	ON_BN_CLICKED(IDC_BTNGETOFFSET, OnBtngetoffset)
	ON_BN_CLICKED(IDC_BTNMAX, OnBtnmax)
	ON_BN_CLICKED(IDC_BTNCHALL, OnBtnchall)
	ON_BN_CLICKED(IDC_BTNUNCHALL, OnBtnunchall)
	ON_CBN_SELCHANGE(IDC_CMBDISCH, OnSelchangeCmbdisch)
	ON_BN_CLICKED(IDC_BTNCNT1, OnBtncnt1)
	ON_BN_CLICKED(IDC_BTNPWM1, OnBtnpwm1)
	ON_CBN_SELCHANGE(IDC_CMBGPTC1TYPE, OnSelchangeCmbgptc1type)
	ON_CBN_SELCHANGE(IDC_CMBGPTC1MODE, OnSelchangeCmbgptc1mode)
	ON_CBN_SELCHANGE(IDC_CMBGPTC2TYPE, OnSelchangeCmbgptc2type)
	ON_CBN_SELCHANGE(IDC_CMBGPTC2MODE, OnSelchangeCmbgptc2mode)
	ON_BN_CLICKED(IDC_BTNCNT2, OnBtncnt2)
	ON_BN_CLICKED(IDC_BTNPWM2, OnBtnpwm2)
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDC_BTNSTART, &CFCADDlg::OnBnClickedBtnstart)
	ON_BN_CLICKED(IDC_BTNSINGLE, &CFCADDlg::OnBnClickedBtnsingle)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFCADDlg message handlers

BOOL CFCADDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	int i=0;
	SetTimer(1, 2000, 0);
	bADRun = FALSE;

	//打开设备
	hDevice = INVALID_HANDLE_VALUE;
	//依次打开设备号0、1、2...31，如果只有一个卡连接，则设备号0，连接上第二个设备，则设备号是1
	BOOL bOpen = FALSE;
	devNum = 0; 
	
	if (i==32) {
		m_strOutput+="没有发现设备\r\n";
		((CButton*)GetDlgItem(IDC_BTNSTART))->EnableWindow(FALSE);
		((CButton*)GetDlgItem(IDC_BTNSTOP))->EnableWindow(FALSE);
		((CButton*)GetDlgItem(IDC_BTNSINGLE))->EnableWindow(FALSE);
		UpdateData(FALSE);
		return  TRUE;
	}

	
	//通道使能
	for(i=0;i<48;i++){
		((CButton*)GetDlgItem(IDC_CH1+i))->SetCheck(1);		
	}
	all_cnt = 48;

	//初始化显示缓存
	for(i=0;i<MAX_SEGMENT;i++){dataBuff[i] = NULL;}
		
	m_nTrigLen	= 1024;//触发长度
	m_fLevel	= 1.0;//触发电平
	m_nTrigDelay= 100;//触发延时采样的基准时钟个数，仅对后触发有效
	m_nADFreq	= 200000;//采样率
	m_fCnt		= 0.5;//单次采集，每通道保存的样点数,0.5MSa
	// m_cmbADRg.SetCurSel(AD_RG_N10T10);//AD输入范围
	m_strOutput = _T("");

	((CButton*)GetDlgItem(IDC_BTNSTART))->EnableWindow(TRUE);
	((CButton*)GetDlgItem(IDC_BTNSTOP))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_BTNSINGLE))->EnableWindow(TRUE);

	//默认连续触发模式
	m_cmbMode.SetCurSel(0);
	m_cmbSrc.SetCurSel(0);
	((CButton*)GetDlgItem(IDC_EDTTRIGLEN))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_EDTTRIGLEVEL))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_EDTTRIGDELAY))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_CMBSRC))->EnableWindow(FALSE);

	//DA初始化
	m_cmbDA0Wav.SetCurSel(0);
	m_cmbDA1Wav.SetCurSel(0);
	m_nDA0Cnt = 1000;
	m_nDA1Cnt = 1000;
	m_nDA0Freq = 100000;
	m_nDA1Freq = 100000;
	m_bEnDA0 = TRUE;
	m_bEnDA1 = TRUE;
	m_lCycleCntDA0 = 100;
	m_lCycleCntDA1 = 100;
	m_bLoopDA0 = TRUE;
	m_bLoopDA1 = TRUE;

    //DI DO
	m_strDI = "0000";
	m_strDO = "aaaa";

	//保存/显示数据选择
	bSave = FALSE;
	((CButton*)GetDlgItem(IDC_CHKSAVE))->SetCheck(0);

	//软件触发标志
	bSoftTrig = FALSE;

	//PWM&COUNTER 工作方式选择
	((CComboBox*)GetDlgItem(IDC_CMBGPTC1TYPE))->SetCurSel(0);
	OnSelchangeCmbgptc1type();
	((CComboBox*)GetDlgItem(IDC_CMBGPTC2TYPE))->SetCurSel(0);
	OnSelchangeCmbgptc2type();

	UpdateData(FALSE);

	return TRUE;
}

void CFCADDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

void CFCADDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CFCADDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CFCADDlg::OnBtnstart() 
{
	int i = 0;
	hEvent = CreateEvent(0,FALSE,FALSE,NULL);
	if (((CButton*)GetDlgItem(IDC_CHKSAVE))->GetCheck() == 1)
		bSave = true;
	else
		bSave = false;
	displayChannel = 0;
	for (i = 0; i < MAX_AD_CH; i ++)
	{
		if(((CButton*)GetDlgItem(IDC_CH1+i))->GetCheck() ==1)
		{
			enChannel[i] = true;
			if (displayChannel == 0)
				displayChannel = i + 1;
		}
		else
			enChannel[i] = false;
	}

	//重新分配缓冲区
	if(dataBuff) 
	{	
		for(i=0;i<MAX_SEGMENT;i++)
		{
			delete [] dataBuff[i];
			dataBuff[i] = NULL;
		}
	}

	//多缓冲
	for(i=0;i<MAX_SEGMENT;i++)
		dataBuff[i] = new USHORT[DISPLAY_CNT];//每个缓冲区存放一个通道AD数据
	//初始化多缓冲标志
	for( i=0;i<MAX_SEGMENT;i++)
		bNewSegmentData[i] = FALSE;
	ReadIndex = 0;
	discnt = 0;

	bADRun = true;

	// Connect to the board
	byte data[4];			
	data[0] = 0x04;
	data[1] = 0x00;
	data[2] = 0x00;
	data[3] = START_CMD;
	OnSend(data, 4);

	m_readThread = AfxBeginThread( ReadThread, (LPVOID)this);//读取线程
	m_displayThread = AfxBeginThread(DisplayThread, (LPVOID)this);//显示线程

	m_readThread->m_bAutoDelete = TRUE;
	m_displayThread->m_bAutoDelete = TRUE;

	((CButton*)GetDlgItem(IDC_BTNSTART))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_BTNSINGLE))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_BTNSTOP))->EnableWindow(TRUE);
	
	UpdateData(FALSE);
}

void CFCADDlg::OnBtnstop() 
{	
	bADRun = false;
	displayChannel = 0;
	
	((CButton*)GetDlgItem(IDC_BTNSTART))->EnableWindow(TRUE);
	((CButton*)GetDlgItem(IDC_BTNSTOP))->EnableWindow(FALSE);
	((CButton*)GetDlgItem(IDC_BTNSINGLE))->EnableWindow(TRUE);
	m_strOutput+="结束数据采集\r\n";

	Sleep(1000);
	byte data[4];			
	data[0] = 0x04;
	data[1] = 0x00;
	data[2] = 0x00;
	data[3] = STOP_CMD;
	OnSend(data, 4);

	UpdateData(FALSE);
}

void CFCADDlg::OnBtnsingle() 
{
	
}

void CFCADDlg::OnTimer(UINT_PTR nIDEvent) 
{
	if(bUpdate)
	{
		bUpdate=FALSE;
		UpdateData(FALSE);   
	}	

	CDialog::OnTimer(nIDEvent);
}

void CFCADDlg::OnClose() 
{
	CDialog::OnClose();
}

void CFCADDlg::OnDestroy() 
{
	if(bADRun)
	{
		bADRun = FALSE;
	}
	
	if(dataBuff==NULL) 
	{	
		for(int i=0;i<MAX_SEGMENT;i++)
		{delete [] dataBuff[i];dataBuff[i] = NULL;}
	}
}

void CFCADDlg::OnSelchangeCmbmode() 
{
	/*
	if(m_cmbMode.GetCurSel()== TRIG_MODE_CONTINUE) 
	{
		((CButton*)GetDlgItem(IDC_EDTTRIGLEN))->EnableWindow(FALSE);
		((CButton*)GetDlgItem(IDC_EDTTRIGLEVEL))->EnableWindow(FALSE);
		((CButton*)GetDlgItem(IDC_CMBSRC))->EnableWindow(FALSE);
	}
	else
	{
		((CButton*)GetDlgItem(IDC_EDTTRIGLEN))->EnableWindow(TRUE);
		((CButton*)GetDlgItem(IDC_EDTTRIGLEVEL))->EnableWindow(TRUE);
		((CButton*)GetDlgItem(IDC_CMBSRC))->EnableWindow(TRUE);
	}
		

	if(m_cmbMode.GetCurSel()== TRIG_MODE_DELAY) 
		((CButton*)GetDlgItem(IDC_EDTTRIGDELAY))->EnableWindow(TRUE);
	else
		((CButton*)GetDlgItem(IDC_EDTTRIGDELAY))->EnableWindow(FALSE);
	*/
}

void CFCADDlg::OnBtnda0() 
{
	/*
	UpdateData(TRUE);
	PUSHORT pBuf  = NULL;
	pBuf = new USHORT[m_nDA0Cnt];
	double m_nPPValue = 1.0;
	int selwave = m_cmbDA0Wav.GetCurSel();
	CmpWave(selwave,m_nDA0Cnt,m_nPPValue,pBuf);
	if(!USB2070_SetDA(hDevice,SEL_DA0,m_bEnDA0 , &m_nDA0Freq,
		m_bLoopDA0,m_lCycleCntDA0,DA_END_YES_PRD,pBuf,m_nDA0Cnt))
	{
		m_strOutput += "设置DA0失败\r\n";
		delete[] pBuf;
		UpdateData(FALSE);
		return;
	}
	delete[] pBuf;
	m_strOutput += "设置DA0成功\r\n";

	UpdateData(FALSE);
	*/
}

void CFCADDlg::OnBtnda1() 
{
	/*
	UpdateData(TRUE);
	PUSHORT pBuf  = NULL;
	pBuf = new USHORT[m_nDA1Cnt];
	double m_nPPValue = 1.0;
	CmpWave(m_cmbDA1Wav.GetCurSel(),m_nDA1Cnt,m_nPPValue,pBuf);
	if (!USB2070_SetDA(hDevice, SEL_DA1,m_bEnDA1, &m_nDA1Freq,
		m_bLoopDA1,m_lCycleCntDA1,DA_END_YES_PRD,pBuf,m_nDA1Cnt)) 
	{
		m_strOutput += "设置DA1失败\r\n";
		delete[] pBuf;
		UpdateData(FALSE);
		return;
	}
	delete[] pBuf;
	m_strOutput += "设置DA1成功\r\n";
	UpdateData(FALSE);
	*/
}

BOOL CFCADDlg::OnSend(byte *Buffer, int buflen) 
{
	// TODO: Add your control notification handler code here
	AfxSocketInit(NULL);
	
	CSocket echoClient;  

	if (echoClient.Create(0,SOCK_DGRAM,NULL) == 0) {
		m_strOutput+="Fail to create socket for sending\r\n";
		UpdateData(FALSE);
		return false;
	}

	if (echoClient.SendTo(Buffer, buflen,8080, _T("192.168.0.2"), 0) != buflen) {
		echoClient.Close();
		return false;
	}

	echoClient.Close();
	return true;
}

void CFCADDlg::OnReceive()
{
	AfxSocketInit(NULL);
	CSocket echoServer;
	int channel = 0;
	USHORT readdata = 0;
	
	if (echoServer.Create(8080, SOCK_DGRAM, NULL)== 0) {
		int code = echoServer.GetLastError();
		AfxMessageBox("Connection Error!");
		goto exit_read;
	}
	

	while(true)
    {		
		SOCKADDR_IN echoClntAddr;
		// Set the size of the in-out parameter
	    int clntAddrLen = sizeof(echoClntAddr);
	
	    // Buffer for echo string
	    char echoBuffer[1024]; 
		byte data[4];

		data[0] = 0x04;
		data[1] = 0x00;
		data[2] = 0x00;
		data[3] = DI_CMD;

		OnSend(data, 4);
	    // Block until receive message from a client
	    int recvMsgSize = echoServer.ReceiveFrom(echoBuffer, 
		  1024, (SOCKADDR*)&echoClntAddr, &clntAddrLen, 0);
		
		if (echoBuffer[0] == 8 && echoBuffer[1] == 8)
		{
			char charouput[100];
			byte data[4];				
			data[0] = 0x04;
			data[1] = 0x00;
			data[2] = 0x00;
			data[3] = DI_COMPLETE;
			OnSend(data, 4);
			Sleep(500);
			OnSend(data, 4);
			Sleep(500);
			OnSend(data, 4);
			Sleep(500);
			readdata = echoBuffer[2] * 256 + echoBuffer[3];
			sprintf(charouput, "%x", readdata);
			m_strDI= charouput;
			echoServer.Close();
			bUpdate = TRUE;
			return;
		}
		SetEvent(hEvent);           // 发送事件，告诉绘制窗口线程，该批数据已采集完毕
	}
	
exit_read:
	echoServer.Close();
}

void CFCADDlg::OnBtngetdi() 
{
	byte data[4];	
	
	UpdateData(TRUE);

	m_readThread = AfxBeginThread( ReadOtherThread, (LPVOID)this);//读取线程
	m_readThread->m_bAutoDelete = TRUE;
	m_strOutput+="设置DI成功\r\n";
	UpdateData(FALSE);	

}

void CFCADDlg::OnBtnsetdo() 
{
	byte data[4];
		
	UpdateData(TRUE);
		
	LONG val = 0xff; 
	CString stmp = m_strDO;
	stmp.SpanExcluding(" ");
	sscanf((LPTSTR)(LPCTSTR)stmp, "%x", &val);

	data[0] = 0x04;
	data[1] = (val >> 8) & 0xFF;
	data[2] = val & 0xFF;
	data[3] = DO_CMD;

	if (OnSend(data, 4) == false) {
		m_strOutput+="设置DO失败\r\n";
		UpdateData(FALSE);
		return ;
	}

	m_strOutput+="设置DO成功\r\n";

	UpdateData(FALSE);	
	
}

void CFCADDlg::OnBtnclr() 
{	
	m_strOutput="";
	UpdateData(FALSE);	
}

UINT CFCADDlg::DisplayThread(LPVOID pParam)
{
	CFCADDlg* TestDlg = (CFCADDlg*)pParam;
	TestDlg->displayData();
	return 0;
}
UINT CFCADDlg::ReadThread(LPVOID pParam)
{
	CFCADDlg* TestDlg = (CFCADDlg*)pParam;
	TestDlg->readData();
	return 0;
}

UINT CFCADDlg::ReadOtherThread(LPVOID pParam)
{
	CFCADDlg* TestDlg = (CFCADDlg*)pParam;
	TestDlg->OnReceive();
	return 0;
}

void  CFCADDlg::readData(void)
{
    USHORT inBuffer[48];
	int i = 0;
	CFile file;
	short channel = 0, data = 0;
	// CTime t = CTime::GetCurrentTime();
	
	if(bSave)
	{
		file.Open(_T("huge.bin"), CFile::modeCreate | CFile::modeWrite);
	}
	
	AfxSocketInit(NULL);
	CSocket echoServer;  
	
	if (echoServer.Create(8080, SOCK_DGRAM, NULL)== 0) {
		int code = echoServer.GetLastError();
		AfxMessageBox("Create() failed");
		goto exit_read;
	}
	
	while(bADRun)
    {	
		SOCKADDR_IN echoClntAddr;
		// Set the size of the in-out parameter
	    int clntAddrLen = sizeof(echoClntAddr);	
	    // Buffer for echo string
	    char echoBuffer[1024];	 
	    // Block until receive message from a client
	    int recvMsgSize = echoServer.ReceiveFrom(echoBuffer, 
		  1024, (SOCKADDR*)&echoClntAddr, &clntAddrLen, 0);

		channel = 0;
		for (int i = 0; i < recvMsgSize; i = i + 2)
		{
			inBuffer[channel] = (USHORT)((SHORT)(echoBuffer[i] * 256 + echoBuffer[i + 1]) + 0x7FFF);

			if (channel == displayChannel - 1)
				dataBuff[ReadIndex][discnt ++] = inBuffer[channel];
			channel ++;
			
			if (discnt == DISPLAY_CNT)
			{
				discnt = 0;
				for(int i=0;i<MAX_SEGMENT;i++)
					bNewSegmentData[i] = FALSE;
				bNewSegmentData[ReadIndex] = true;
				ReadIndex ++;
				if (ReadIndex == MAX_SEGMENT)
					ReadIndex = 0;
				SetEvent(hEvent);           // 发送事件，告诉绘制窗口线程，该批数据已采集完毕		
			}
		}
		
		bUpdate = TRUE;

		if(bSave)
		{
			file.Write(inBuffer, 48 * sizeof(SHORT));
		}
		
	}
	
exit_read:
	echoServer.Close();
	if(bSave)
	{
		file.Close();
	}
	bUpdate = TRUE;	
}

void  CFCADDlg::displayData(void)
{
	int nLen = DISPLAY_CNT;

	CDC* pDC = CDC::FromHandle(::GetDC(m_hWnd));
	CRect rc;
	GetDlgItem(IDC_STATIC1)->GetWindowRect(rc);
	ScreenToClient(rc);

	CBitmap bmp;
	bmp.CreateCompatibleBitmap(pDC, rc.Width(), rc.Height());
	CDC dcMem;
	dcMem.CreateCompatibleDC(pDC);
	CBitmap* pOldBmp = dcMem.SelectObject(&bmp);
	CPen pen(PS_SOLID, 0, RGB(0, 255, 0));
	CPen* pOldPen = dcMem.SelectObject(&pen);
	int k = 0;
	CurrentIndex = 0;

	while(bADRun)
	{
		do{
			if(!bADRun) goto exit_DisplayThread;
		}while(WaitForSingleObject(hEvent, 100) != WAIT_OBJECT_0);  

		while(bNewSegmentData[CurrentIndex] == TRUE && bADRun ) // 是新的数据
		{

			dcMem.FillSolidRect(0, 0, rc.Width(), rc.Height(), 0);
			dcMem.SetMapMode(MM_ANISOTROPIC);
			dcMem.SetWindowExt(nLen, AD_MAXVALUE);
			dcMem.SetViewportExt(rc.Size().cx,rc.Size().cy);

			dcMem.MoveTo(0, AD_MAXVALUE-(USHORT)(dataBuff[CurrentIndex][0]));

			for (int j=1; j < DISPLAY_CNT; j++)
				dcMem.LineTo(j, AD_MAXVALUE - (USHORT)(dataBuff[CurrentIndex][j]));

			dcMem.SetMapMode(MM_TEXT);
			pDC->BitBlt(rc.left, rc.top, rc.Width(), rc.Height(), &dcMem, 0, 0, SRCCOPY);

			bNewSegmentData[CurrentIndex] = FALSE; 
			CurrentIndex++;
			if(CurrentIndex == MAX_SEGMENT)                                                                       
			{
				CurrentIndex = 0;
			}
		}
	}

exit_DisplayThread:
	dcMem.SelectObject(pOldPen);
	dcMem.SelectObject(pOldBmp);
}

void CFCADDlg::OnBtnsetoffset() 
{
	/*
	UpdateData(TRUE);
	LONG i=0;
	long val[48] = {0};
	for(i=0;i<48;i++){val[i]=0;}
	for( i=0;i<48;i++)
	{
		if (!USB2070_ADoffset(hDevice,WRITEOFFSET,i,&val[i])) 
		{m_strOutput+= "Error: 写入零偏失败\r\n"; UpdateData(FALSE);return ;}
	}
	m_strOutput+= "OK: 写入零偏成功，\r\n请重新上电\r\n";
	UpdateData(FALSE);
	*/
}

void CFCADDlg::OnBtngetoffset() 
{
	/*
	UpdateData(TRUE);
	long val[48] ={0};
	int i=0;
	for(i=0;i<48;i++)
	{
		if (!USB2070_ADoffset(hDevice,READOFFSET,i,&val[i])) 
		{m_strOutput+= "Error: 读取零偏失败\r\n";UpdateData(FALSE); return ;}
	}
	for(i=0;i<48;i++)
	{
		char output[100];
		sprintf(output,"OF[%d]=%d\r\n",i,val[i]);
		m_strOutput+=output;
	}
	m_strOutput+= "OK: 读取零偏成功\r\n";
	UpdateData(FALSE);
	*/
}

void CFCADDlg::OnBtnmax() 
{
	/*
	UpdateData(TRUE);
	m_nTrigLen =  AD_FIFO_Size/TRIG_UNIT/all_cnt;
	UpdateData(FALSE);
	*/
}

BOOL CFCADDlg::readUSB(PUSHORT pBuf, int bufSiz)//存盘
{
	return TRUE;
}

void CFCADDlg::saveDisk(FILE* flHandle,PUSHORT pBuf, int fileSiz)//存盘
{
	//保存，如果数据量太大，分多次保存
	int scnt = 0;
	if((fileSiz%MAX_WRITE_SIZE) == 0)
	//如果读取的长度，刚好是最大允许读取长度的整数倍
		scnt = (fileSiz/MAX_WRITE_SIZE);
	else
		scnt = (fileSiz/MAX_WRITE_SIZE)+1;
	//FILE *fp0=fopen(filename,"wb");
	int slen = 0;
	int aslen = 0;
	for(int i=0;i<scnt;i++)
	{
		if(i==(scnt-1))//如果是最后一次
		{
			if ((fileSiz%MAX_WRITE_SIZE) ==0)//如果刚好是整数倍
				slen = MAX_WRITE_SIZE;
			else 
				slen = fileSiz%MAX_WRITE_SIZE;
		}
		else 
		{
			slen = MAX_WRITE_SIZE;
		}
		fwrite(pBuf+aslen,sizeof(USHORT), slen,flHandle);
		aslen+=slen;
	}
	//fclose(fp0);
}

void CFCADDlg::OnBtnchall() 
{
	for(int i=0;i<MAX_AD_CH;i++)
	{
		((CButton*)GetDlgItem(IDC_CH1+i))->SetCheck(1);		
	}
	all_cnt = 48;
}

void CFCADDlg::OnBtnunchall() 
{
	for(int i=0;i<MAX_AD_CH;i++)
	{
		((CButton*)GetDlgItem(IDC_CH1+i))->SetCheck(0);		
	}	
}

void CFCADDlg::OnSelchangeCmbdisch() 
{
	UpdateData(TRUE);
	display_ch = m_cmbDisch.GetCurSel();
	UpdateData(FALSE);	
}




//计数器模式，17种
CString  strcnt[17] = 
{
	"NOGATE_EXT",
	"GATE_RISING_EXT",   
	"GATE_FALLING_EXT",  	
	"GATE_1_EXT",        
	"GATE_0_EXT",        
	"GATE_S_R2F_EXT",   
	"GATE_S_F2R_EXT",    
	"GATE_S_R2R_EXT",    
	"GATE_S_F2F_EXT",   
	"GATE_R_R2F_EXT",    
	"GATE_R_F2R_EXT",  
	"GATE_R_R2R_EXT",    
	"GATE_R_F2F_EXT",   
	"GATE_R_R2F_INT",  
	"GATE_R_F2R_INT",  
	"GATE_R_R2R_INT",   
	"GATE_R_F2F_INT" 
};

//脉冲发生器模式，5种
CString  strpwm[5] = 
{
	"NOGATE", 
	"GATE_RISING", 
	"GATE_FALLING", 
	"GATE_1", 
	"GATE_0 "
};

void CFCADDlg::OnBtncnt1() 
{
	/*
	UpdateData(TRUE);
	ULONG cnt[2];
	m_strOutput = "";
	if (!USB2070_GetCntValue(hDevice,0, cnt))
	{
		m_strOutput+= "Error: 读取CNT0失败\r\n";
	}
	else
	{
		char output[100];
		m_strOutput+= "OK: 读取CNT0成功\r\n";
		sprintf(output,"cnt0当前值0x%x\r\n",cnt[0]);m_strOutput += output;
		sprintf(output,"cnt0寄存器值0x%x\r\n",cnt[1]);m_strOutput += output;

	}
	UpdateData(FALSE);	
	*/
}

void CFCADDlg::OnBtnpwm1() 
{
	/*
	UpdateData(TRUE);
	USB2070_PWM_INIT pwm_init0;
	LONG pwmmode =  ((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->GetCurSel();
	pwm_init0.bEnable = 1;
	pwm_init0.bLoop = 1;
	pwm_init0.lAllCnt = 48;
	pwm_init0.lHighCnt = 10;
	pwm_init0.lMode = pwmmode;
	pwm_init0.lCycleCnt = 5;//bLoop = 0 该参数才有作用

	if (!USB2070_SetPwm(hDevice, 0,&pwm_init0)) 
	{
		m_strOutput += "设置PWM1失败\r\n";
		UpdateData(FALSE);
		return;
	}

	CString str;
	str.Format("PWM1模式%d\r\n",pwmmode);
	m_strOutput += str;
	m_strOutput += "设置成功\r\n";
	UpdateData(FALSE);
	*/
}

void CFCADDlg::OnSelchangeCmbgptc1type() 
{
	/*
	((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->ResetContent();
	if (((CComboBox*)GetDlgItem(IDC_CMBGPTC1TYPE))->GetCurSel()  == TYPE_COUNTER) 
	//计数器工作方式
	{
		for(int i=0;i<17;i++){
			((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->InsertString(i,strcnt[i]);			
		}	
		((CButton*)GetDlgItem(IDC_BTNCNT1))->EnableWindow(TRUE);//使能读取计数按键
		((CButton*)GetDlgItem(IDC_BTNPWM1))->EnableWindow(FALSE);//非使能脉冲发生器按键
	}
	else 
	//脉冲发生器工作方式
	{
		for(int i=0;i<5;i++){
			((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->InsertString(i,strpwm[i]);			
		}
		((CButton*)GetDlgItem(IDC_BTNCNT1))->EnableWindow(FALSE);//非使能读取计数按键
		((CButton*)GetDlgItem(IDC_BTNPWM1))->EnableWindow(TRUE);//使能脉冲发生器按键
	}
	((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->SetCurSel(0);
	*/
}

void CFCADDlg::OnSelchangeCmbgptc1mode() 
{
	/*
	//如果是计数器工作方式，先初始化计数器
	UpdateData(TRUE);
	m_strOutput = "";	
	LONG  Mode = ((CComboBox*)GetDlgItem(IDC_CMBGPTC1MODE))->GetCurSel();
	CString str;
	if (((CComboBox*)GetDlgItem(IDC_CMBGPTC1TYPE))->GetCurSel()  == TYPE_COUNTER)
	{
		if (!USB2070_initCnt(hDevice,0,Mode,TRUE,0)) {
			m_strOutput += "设置计数器模式失败\r\n";
			UpdateData(FALSE);
			return;
		}	
		str.Format("计数器模式%d\r\n",Mode);
		m_strOutput += str;		
		m_strOutput += "设置成功\r\n";
		UpdateData(FALSE);	
	}
	*/
}

void CFCADDlg::OnSelchangeCmbgptc2type() 
{
	/*
	((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->ResetContent();
	if (((CComboBox*)GetDlgItem(IDC_CMBGPTC2TYPE))->GetCurSel()  == TYPE_COUNTER) 
	//计数器工作方式
	{
		for(int i=0;i<17;i++){
			((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->InsertString(i,strcnt[i]);			
		}	
		((CButton*)GetDlgItem(IDC_BTNCNT2))->EnableWindow(TRUE);//使能读取计数按键
		((CButton*)GetDlgItem(IDC_BTNPWM2))->EnableWindow(FALSE);//非使能脉冲发生器按键
	}
	else 
	//脉冲发生器工作方式
	{
		for(int i=0;i<5;i++){
			((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->InsertString(i,strpwm[i]);			
		}
		((CButton*)GetDlgItem(IDC_BTNCNT2))->EnableWindow(FALSE);//非使能读取计数按键
		((CButton*)GetDlgItem(IDC_BTNPWM2))->EnableWindow(TRUE);//使能脉冲发生器按键
	}
	((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->SetCurSel(0);
	*/
}

void CFCADDlg::OnSelchangeCmbgptc2mode() 
{
	/*
	//如果是计数器工作方式，先初始化计数器
	UpdateData(TRUE);
	m_strOutput = "";	
	LONG  Mode = ((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->GetCurSel();
	CString str;
	if (((CComboBox*)GetDlgItem(IDC_CMBGPTC2TYPE))->GetCurSel()  == TYPE_COUNTER)
	{
		if (!USB2070_initCnt(hDevice,1,Mode,TRUE,0)) {
			m_strOutput += "设置计数器模式失败\r\n";
			UpdateData(FALSE);
			return;
		}	
		str.Format("计数器模式%d\r\n",Mode);
		m_strOutput += str;		
		m_strOutput += "设置成功\r\n";
		UpdateData(FALSE);	
	}
	*/
}

void CFCADDlg::OnBtncnt2() 
{
	/*
	UpdateData(TRUE);
	ULONG cnt[2];
	m_strOutput = "";
	if (!USB2070_GetCntValue(hDevice,1, cnt))
	{
		m_strOutput+= "Error: 读取CNT1失败\r\n";
	}
	else
	{
		char output[100];
		m_strOutput+= "OK: 读取CNT1成功\r\n";
		sprintf(output,"cnt1当前值0x%x\r\n",cnt[0]);m_strOutput += output;
		sprintf(output,"cnt1寄存器值0x%x\r\n",cnt[1]);m_strOutput += output;

	}
	UpdateData(FALSE);	
	*/
}

void CFCADDlg::OnBtnpwm2() 
{
	/*
	UpdateData(TRUE);
	USB2070_PWM_INIT pwm_init0;
	LONG pwmmode =  ((CComboBox*)GetDlgItem(IDC_CMBGPTC2MODE))->GetCurSel();
	pwm_init0.bEnable = 1;
	pwm_init0.bLoop = 1;
	pwm_init0.lAllCnt = 48;
	pwm_init0.lHighCnt = 10;
	pwm_init0.lMode = pwmmode;
	pwm_init0.lCycleCnt = 5;//bLoop = 0 该参数才有作用

	if (!USB2070_SetPwm(hDevice, 1,&pwm_init0)) 
	{
		m_strOutput += "设置PWM2失败\r\n";
		UpdateData(FALSE);
		return;
	}

	CString str;
	str.Format("PWM2模式%d\r\n",pwmmode);
	m_strOutput += str;
	m_strOutput += "设置成功\r\n";
	UpdateData(FALSE);
	*/
}


void CFCADDlg::OnBnClickedBtnstart()
{
	// TODO: 在此添加控件通知处理程序代码
}


void CFCADDlg::OnBnClickedBtnsingle()
{
	// TODO: 在此添加控件通知处理程序代码
}
