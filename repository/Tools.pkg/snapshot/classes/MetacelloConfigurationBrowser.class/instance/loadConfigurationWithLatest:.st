
!MetacelloConfigurationBrowser methodsFor: 'private'!
loadConfigurationWithLatest: loadLatest
	"Load the configuration and (depending on the flag) load the latest version"
	
	| configName |
	configName := selectedConfiguration readStream upTo: $-.
	Gofer new
		url: self repository; 
		package: configName;
		load.
	loadLatest ifFalse: [^self].
	
	"Now load the latest version"
	(Smalltalk at: (configName) asSymbol) project latestVersion load.! !
