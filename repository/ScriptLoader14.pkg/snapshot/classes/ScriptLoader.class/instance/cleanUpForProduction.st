
!ScriptLoader methodsFor: 'cleaning'!
cleanUpForProduction
	"self new cleanUpForProduction"
	
	| oldDicts newDicts |
	
	"trim MC ancestory information"
	MCVersionInfo allInstances do: [ :each | each instVarNamed: 'ancestors' put: nil ].

	"delete logo"	
	PolymorphSystemSettings showDesktopLogo: false.

	"delete ScriptLoader log"
	ScriptLoader resetLogStream.

	"unload packages"
	Smalltalk globals at: #SUnitUnloader ifPresent:[ :unloader | unloader new unloadAll  ].
	(MCPackage named: 'HelpSystem-Core') unload.
	(MCPackage named: 'FixUnderscores') unload.
	(MCPackage named: 'Deprecated14') unload.
	(MCPackage named: 'HostMenus') unload.
	(MCPackage named: 'StratifiedProxy') unload.
	
	self cleanUpForRelease.
	(MCPackage named: self theScriptLoaderPackageName) unload.
	ChangeSet removeChangeSetsNamedSuchThat: [ :each | true ].
	ChangeSet resetCurrentToNewUnnamedChangeSet.
	Smalltalk cleanUp: true except: #() confirming: false.
	Smalltalk garbageCollect.
	! !
