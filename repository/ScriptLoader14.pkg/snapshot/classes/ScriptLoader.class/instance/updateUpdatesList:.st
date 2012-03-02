
!ScriptLoader methodsFor: 'elementary steps'!
updateUpdatesList: aString
	"ScriptLoader new updateUpdatesList: 'cleanUpMethods'"
	
	| str |
	str := FileDirectory default oldFileNamed: self updatesListFileName.
	[	str
			setToEnd;
			cr;
			nextPutAll: self currentUpdateVersionNumber asString;
			nextPutAll: '-Pha-', aString, '.cs' ]
		ensure: [ str close ]! !
