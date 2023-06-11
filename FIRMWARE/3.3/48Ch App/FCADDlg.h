// FCADDlg.h : header file
//

#if !defined(AFX_FCADDLG_H__ECEDF9F9_4DC7_43CB_9BFA_63CCD41A5C38__INCLUDED_)
#define AFX_FCADDLG_H__ECEDF9F9_4DC7_43CB_9BFA_63CCD41A5C38__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


#define  MAX_SEGMENT 5//图像缓冲区数目

/////////////////////////////////////////////////////////////////////////////
// CFCADDlg dialog
class CFCADDlg : public CDialog
{
// Construction
public:
	CFCADDlg(CWnd* pParent = NULL);	// standard constructor

	HANDLE hDevice ; //设备句柄
	UCHAR  devNum ;  //当前打开设备号

	BOOL  bSoftTrig; //软件触发

	static UINT DisplayThread(LPVOID pParam);//显示线程
	static UINT ReadThread(LPVOID pParam);//读数线程
	static UINT ReadOtherThread(LPVOID pParam);
	void  readData(void);
	void  displayData(void);
	CWinThread* m_readThread;	//读取线程
	CWinThread* m_displayThread;//显示线程

	//存盘
	void saveDisk(FILE* flHandle,PUSHORT pBuf, int fileSiz);
	//读取数据
	BOOL readUSB(PUSHORT pBuf, int bufSiz);

	BOOL   bADRun;	//正在采集标志 
	HANDLE hEvent;	//事件
	ULONG  samcnt;	//采集样点数
	BOOL   bUpdate;	//刷新窗体

	ULONG   discnt;		//显示的点数
	int display_ch;		//显示的通道

	LONG all_cnt;		//统计通道数

	//读数线程和显示线程公共缓冲区，设立多个块缓冲
	BOOL bNewSegmentData[MAX_SEGMENT]; // 用于确定当前段数据是否为最新数据
	int CurrentIndex; // 数据处理线程当前缓冲区索引号
	int ReadIndex;    // 数据采集线程当前缓冲区索引号
	USHORT* dataBuff[MAX_SEGMENT];//采集信息缓冲，采用Block环形缓冲方式

	BOOL bSave;//保存或显示结果
	
	// Check channel enable state
	BOOL enChannel[48];
	int displayChannel;
	// UDP send function
	BOOL OnSend(byte *Buffer, int buflen);
	void OnReceive();

// Dialog Data
	//{{AFX_DATA(CFCADDlg)
	enum { IDD = IDD_FCAD_DIALOG };
	CComboBox	m_cmbADRg;
	CComboBox	m_cmbDisch;
	CComboBox	m_cmbSrc;
	CComboBox	m_cmbDA1Wav;
	CComboBox	m_cmbDA0Wav;
	CComboBox	m_cmbMode;
	CString	m_strOutput;
	int		m_nTrigLen;
	long	m_nDA0Freq;
	long	m_nDA1Cnt;
	long	m_nDA0Cnt;
	long	m_nDA1Freq;
	BOOL	m_bEnDA0;
	BOOL	m_bEnDA1;
	CString	m_strDI;
	CString	m_strDO;
	float	m_fLevel;
	int		m_nTrigDelay;
	BOOL	m_bLoopDA0;
	int		m_lCycleCntDA0;
	int		m_lCycleCntDA1;
	BOOL	m_bLoopDA1;
	LONG	m_nADFreq;
	double	m_fCnt;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFCADDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CFCADDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnstart();
	afx_msg void OnBtnstop();
	afx_msg void OnBtnsingle();
	afx_msg void OnTimer(UINT_PTR nIDEvent);
	afx_msg void OnClose();
	afx_msg void OnDestroy();
	afx_msg void OnSelchangeCmbmode();
	afx_msg void OnBtnda0();
	afx_msg void OnBtnda1();
	afx_msg void OnBtngetdi();
	afx_msg void OnBtnsetdo();
	afx_msg void OnBtnclr();
	afx_msg void OnBtnsetoffset();
	afx_msg void OnBtngetoffset();
	afx_msg void OnBtnmax();
	afx_msg void OnBtnchall();
	afx_msg void OnBtnunchall();
	afx_msg void OnSelchangeCmbdisch();
	afx_msg void OnBtncnt1();
	afx_msg void OnBtnpwm1();
	afx_msg void OnSelchangeCmbgptc1type();
	afx_msg void OnSelchangeCmbgptc1mode();
	afx_msg void OnSelchangeCmbgptc2type();
	afx_msg void OnSelchangeCmbgptc2mode();
	afx_msg void OnBtncnt2();
	afx_msg void OnBtnpwm2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnBnClickedBtnstart();
	afx_msg void OnBnClickedBtnsingle();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FCADDLG_H__ECEDF9F9_4DC7_43CB_9BFA_63CCD41A5C38__INCLUDED_)
