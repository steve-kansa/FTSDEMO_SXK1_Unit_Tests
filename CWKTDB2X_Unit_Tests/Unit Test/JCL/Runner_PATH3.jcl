//PFHSXK0X  JOB ('CWTXCSXK'),'TESTER',       
//       CLASS=A,MSGCLASS=R,NOTIFY=&SYSUID,REGION=0M     
/*JOBPARM S=*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//STEPLIB  DD DSN=SYS2.CW.&CWGACX..SLCXLOAD,DISP=SHR
//        DD DISP=SHR,DSN=SALESSUP.SXK1.DEV3.LOAD
//        DD DISP=SHR,DSN=SALESSUP.SXK1.QA3.LOAD
//        DD DISP=SHR,DSN=SALESSUP.SXK1.PRD.LOAD
//EMPFILE  DD   DSN=SYS2.CW.&CWGAXT..SLXTSAMP(CWXTDATA),
//         DISP=SHR
//RPTFILE  DD   SYSOUT=X
//SYSOUT   DD   SYSOUT=X
//TRPARM DD *
*
*        Optionally set your custom exit program here:
* 
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(OFF)
/* 
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//SYSPRINT DD SYSOUT=*
//*
