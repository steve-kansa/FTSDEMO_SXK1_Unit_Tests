//PFHSXK0X  JOB ('CWTXCSXK'),'TESTER',       
//       CLASS=A,MSGCLASS=R,NOTIFY=&SYSUID,REGION=0M     
/*JOBPARM S=*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//STEPLIB  DD DSN=SYS2.CW.&CWGACX..SLCXLOAD,DISP=SHR
//        DD DISP=SHR,DSN=SALESSUP.SXK1.DEV1.LOAD
//        DD DISP=SHR,DSN=SALESSUP.SXK1.QA1.LOAD
//        DD DISP=SHR,DSN=SALESSUP.SXK1.STG.LOAD
//*
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
DEBUG(ON)
/* 
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//SYSPRINT DD SYSOUT=*
//*
