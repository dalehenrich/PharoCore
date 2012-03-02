
!DosFileDirectory class methodsFor: '*StartupPreferences'!
preferencesRootPath
	|  list rootPath osMajorVer |
	
	"First try to adhere to hardcoded Microsoft conventions - though we really should be reading environment variables since %SYSTEMDRIVE% might not be C: "
	"Windows OS Version numbers from http://msdn.microsoft.com/en-us/library/windows/desktop/ms724832%28v=vs.85%29.aspx"
	
	osMajorVer := Smalltalk os osVersion first.
	osMajorVer = $5 ifTrue: [ rootPath := 'C:\Documents and Settings\All Users\Pharo\'].
	osMajorVer = $6 ifTrue: [ rootPath := 'C:\ProgramData\Pharo\'].		
	( self forFileName: rootPath ) exists ifTrue: [ ^rootPath ]..
	
	"Fall back in case system locked down so user has not been able to create folder per Microsoft conventions above"
	
	list := (self default fullName subStrings: self slash) copyFrom: 1 to: 2.
	rootPath := (list joinUsing: self slash) , '\_config\Pharo\' .
	^ rootPath.
	

! !
