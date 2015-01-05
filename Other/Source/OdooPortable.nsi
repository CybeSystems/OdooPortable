; =================================================================
; CybeSystems OdooPortable NSIS Launcher
; =================================================================

!verbose 0

; **************************************************************************
; === Define constants ===
; **************************************************************************
!define VER 		1.0.0.0	; version of launcher
!define APPNAME 	"OdooPortable"	; complete name of program
!define APPFOLDER 	"OdooPortable"	; complete name of program
!define APPEXE 		"OdooLauncher-X86.exe"	; complete name of program
!define APPICON		"appicon.ico"	; complete name of program
!define SHORTCUTNAME 		"OdooPortable"	; complete name of program
!define SHORTCUTFILE 		"OdooPortable.pyc"	; complete name of program
;!include ${SHORTCUTNAME}.nsh

; **************************************************************************
; === Best Compression ===
; **************************************************************************
SetCompressor /SOLID lzma
SetCompressorDictSize 32

; **************************************************************************
; === Set version information ===
; **************************************************************************
Caption "${APPNAME}"
VIProductVersion "${VER}"
VIAddVersionKey ProductName "${APPNAME}"
VIAddVersionKey FileDescription "${APPNAME}"
VIAddVersionKey FileVersion "${VER}"
VIAddVersionKey ProductVersion "${VER}"
VIAddVersionKey InternalName "${APPNAME}"
VIAddVersionKey OriginalFilename "${SHORTCUTNAME}.exe"

; **************************************************************************
; === Includes ===
; **************************************************************************
!ifdef REGISTRY
!include "Registry.nsh"
!endif
!include TextFunc.nsh
!insertmacro GetParameters


!include "nsDialogs.nsh"
!include "winmessages.nsh"
!include "logiclib.nsh"

; **************************************************************************
; === Runtime Switches ===
; **************************************************************************
WindowIcon Off
SilentInstall Silent
AutoCloseWindow True
RequestExecutionLevel user

; **************************************************************************
; === Set basic information ===
; **************************************************************************
Name "${APPNAME}"
OutFile "${SHORTCUTNAME}.exe"
Icon "${APPICON}"

; **************************************************************************
; ==== Running ====
; **************************************************************************
# create a default section.

Section "Main"
	Call Launch
SectionEnd

; **************************************************************************
; === Run Application ===
; **************************************************************************

Function Launch
	${GetParameters} $0 	; Read command line parameters
	
	IfFileExists "$EXEDIR\App\${APPEXE}" OneFolderX86 TwoFolderCheckX86
	OneFolderX86:
		SetOutPath "$EXEDIR\App"
		Exec "${APPEXE}" 	; EXEC app with parameters	
	
	TwoFolderCheckX86:
		IfFileExists "$EXEDIR\${APPFOLDER}\App\${APPEXE}" TwoFolderX86 ThreeFolderCheckX86
		TwoFolderX86:
			SetOutPath "$EXEDIR\${APPFOLDER}\App"
			Exec "${APPEXE}" 	; EXEC app with parameters		
	
	ThreeFolderCheckX86:
		IfFileExists "$EXEDIR\PortableApps\${APPFOLDER}\App\${APPEXE}" ThreeFolderX86 PastMissingCheck
		ThreeFolderX86:
			SetOutPath "$EXEDIR\PortableApps\${APPFOLDER}\App"
			Exec "${APPEXE}" 	; EXEC app with parameters	
			
	PastMissingCheck:
FunctionEnd