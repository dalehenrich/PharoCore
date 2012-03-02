
!ScriptLoader methodsFor: 'elementary steps'!
CSForLastUpdate: aString
	"ScriptLoader new CSForLastUpdate: 'cleanUpMethods'"
	
	| str updateNumber filename|
	updateNumber := self getLatestUpdateNumber.
	filename := updateNumber asString, '-Pha-', aString, '.cs'.
	FileDirectory default 
		forceNewFileNamed:  filename
		do: [ :stream | 
					self 
						generateCS: self latestScriptLoaderPackageIdentificationString
						fromUpdate: updateNumber on: stream].
	^ filename! !
