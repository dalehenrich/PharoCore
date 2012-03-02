
!SystemVersion methodsFor: 'accessing'!
version: newVersion

	"In the follow the implementation of testDowngrade as example of usage of this API
	
	| sv |
	sv := SystemVersion fromShortVersionString: 'Pharo1.2ALPHA'.
	self assert: sv shortVersionString = 'Pharo1.2ALPHA'.
	self assert: (sv instVarNamed: 'version') isNil.
	self assert: sv suffix = 'ALPHA'.
	sv version: sv shortVersionString.
	self assert: (sv instVarNamed: 'version') = 'Pharo1.2ALPHA'.
	self assert: sv type isNil.
	self assert: sv major isNil.
	self assert: sv minor isNil.
	self assert: sv suffix isNil"

	self deprecated: 'Use individual accessors type, major, minor, suffix. Version is not a string.' on: '28 Sep 2010' in: 'Pharo1.2'.
	
	version := newVersion.
	type := major := minor := suffix := nil! !
