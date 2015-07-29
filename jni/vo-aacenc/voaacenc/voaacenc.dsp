# Microsoft Developer Studio Project File - Name="voaacenc" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=voaacenc - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "voaacenc.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "voaacenc.mak" CFG="voaacenc - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "voaacenc - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "voaacenc - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "voaacenc - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "voaacenc - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ  /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ  /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "voaacenc - Win32 Release"
# Name "voaacenc - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\src\aac_rom.c
# End Source File
# Begin Source File

SOURCE=..\src\aacenc.c
# End Source File
# Begin Source File

SOURCE=..\src\aacenc_core.c
# End Source File
# Begin Source File

SOURCE=..\src\adj_thr.c
# End Source File
# Begin Source File

SOURCE=..\src\band_nrg.c
# End Source File
# Begin Source File

SOURCE=..\basic_op\basicop2.c
# End Source File
# Begin Source File

SOURCE=..\src\bit_cnt.c
# End Source File
# Begin Source File

SOURCE=..\src\bitbuffer.c
# End Source File
# Begin Source File

SOURCE=..\src\bitenc.c
# End Source File
# Begin Source File

SOURCE=..\src\block_switch.c
# End Source File
# Begin Source File

SOURCE=..\src\channel_map.c
# End Source File
# Begin Source File

SOURCE=..\src\cmnMemory.c
# End Source File
# Begin Source File

SOURCE=..\src\dyn_bits.c
# End Source File
# Begin Source File

SOURCE=..\src\grp_data.c
# End Source File
# Begin Source File

SOURCE=..\src\interface.c
# End Source File
# Begin Source File

SOURCE=..\src\line_pe.c
# End Source File
# Begin Source File

SOURCE=..\src\memalign.c
# End Source File
# Begin Source File

SOURCE=..\src\ms_stereo.c
# End Source File
# Begin Source File

SOURCE=..\basic_op\oper_32b.c
# End Source File
# Begin Source File

SOURCE=..\src\pre_echo_control.c
# End Source File
# Begin Source File

SOURCE=..\src\psy_configuration.c
# End Source File
# Begin Source File

SOURCE=..\src\psy_main.c
# End Source File
# Begin Source File

SOURCE=..\src\qc_main.c
# End Source File
# Begin Source File

SOURCE=..\src\quantize.c
# End Source File
# Begin Source File

SOURCE=..\src\sf_estim.c
# End Source File
# Begin Source File

SOURCE=..\src\spreading.c
# End Source File
# Begin Source File

SOURCE=..\src\stat_bits.c
# End Source File
# Begin Source File

SOURCE=..\src\tns.c
# End Source File
# Begin Source File

SOURCE=..\src\transform.c
# End Source File
# Begin Source File

SOURCE=..\VoAACEncoder.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\inc\aac_rom.h
# End Source File
# Begin Source File

SOURCE=..\inc\aacenc_core.h
# End Source File
# Begin Source File

SOURCE=..\inc\adj_thr.h
# End Source File
# Begin Source File

SOURCE=..\inc\adj_thr_data.h
# End Source File
# Begin Source File

SOURCE=..\inc\band_nrg.h
# End Source File
# Begin Source File

SOURCE=..\basic_op\basic_op.h
# End Source File
# Begin Source File

SOURCE=..\inc\bit_cnt.h
# End Source File
# Begin Source File

SOURCE=..\inc\bitbuffer.h
# End Source File
# Begin Source File

SOURCE=..\inc\bitenc.h
# End Source File
# Begin Source File

SOURCE=..\inc\block_switch.h
# End Source File
# Begin Source File

SOURCE=..\inc\channel_map.h
# End Source File
# Begin Source File

SOURCE=..\inc\cmnMemory.h
# End Source File
# Begin Source File

SOURCE=..\inc\config.h
# End Source File
# Begin Source File

SOURCE=..\inc\dyn_bits.h
# End Source File
# Begin Source File

SOURCE=..\inc\grp_data.h
# End Source File
# Begin Source File

SOURCE=..\inc\interface.h
# End Source File
# Begin Source File

SOURCE=..\inc\line_pe.h
# End Source File
# Begin Source File

SOURCE=..\inc\memalign.h
# End Source File
# Begin Source File

SOURCE=..\inc\ms_stereo.h
# End Source File
# Begin Source File

SOURCE=..\basic_op\oper_32b.h
# End Source File
# Begin Source File

SOURCE=..\inc\pre_echo_control.h
# End Source File
# Begin Source File

SOURCE=..\inc\psy_configuration.h
# End Source File
# Begin Source File

SOURCE=..\inc\psy_const.h
# End Source File
# Begin Source File

SOURCE=..\inc\psy_data.h
# End Source File
# Begin Source File

SOURCE=..\inc\psy_main.h
# End Source File
# Begin Source File

SOURCE=..\inc\qc_data.h
# End Source File
# Begin Source File

SOURCE=..\inc\qc_main.h
# End Source File
# Begin Source File

SOURCE=..\inc\quantize.h
# End Source File
# Begin Source File

SOURCE=..\inc\sf_estim.h
# End Source File
# Begin Source File

SOURCE=..\inc\spreading.h
# End Source File
# Begin Source File

SOURCE=..\inc\stat_bits.h
# End Source File
# Begin Source File

SOURCE=..\inc\tns.h
# End Source File
# Begin Source File

SOURCE=..\inc\tns_func.h
# End Source File
# Begin Source File

SOURCE=..\inc\tns_param.h
# End Source File
# Begin Source File

SOURCE=..\inc\transform.h
# End Source File
# Begin Source File

SOURCE=..\basic_op\typedef.h
# End Source File
# Begin Source File

SOURCE=..\basic_op\typedefs.h
# End Source File
# Begin Source File

SOURCE=..\inc\voAAC.h
# End Source File
# Begin Source File

SOURCE=..\inc\voAMRWB.h
# End Source File
# Begin Source File

SOURCE=..\inc\voAudio.h
# End Source File
# Begin Source File

SOURCE=..\inc\voIndex.h
# End Source File
# Begin Source File

SOURCE=..\inc\voMem.h
# End Source File
# Begin Source File

SOURCE=..\inc\voType.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
