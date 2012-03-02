
!ScriptLoader methodsFor: 'elementary steps'!
loadLatestScriptloader
	"self new loadLatestScriptloader"
	
	self class 
		loadLatestPackage: 'ScriptLoader', self currentMajorVersionNumberWithoutDot 
		fromSqueaksource: 'Pharo14' 
	

! !
