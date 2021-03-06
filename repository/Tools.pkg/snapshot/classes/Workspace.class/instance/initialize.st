
!Workspace methodsFor: 'initialization'!
initialize
	| os |
	
	super initialize.
	contents := ''.
	acceptDroppedMorphs := false.
	mustDeclareVariables := false.
	lineEnding := #cr.
	os := OSPlatform platformName asUppercase. "get OS name"
	"try to guess default line ending"
	(os beginsWith: 'WIN') ifTrue: [lineEnding := #crlf].
	(os beginsWith: 'UNIX') ifTrue: [lineEnding := #lf].
	
	encoding := TextConverter default class encodingNames first.! !
