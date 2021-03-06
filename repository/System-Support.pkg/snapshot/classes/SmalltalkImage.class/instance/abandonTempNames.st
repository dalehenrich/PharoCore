
!SmalltalkImage methodsFor: 'shrinking'!
abandonTempNames
	"Replaces every method by a copy with no source pointer or
	encoded temp names."
	"Smalltalk abandonTempNames"
	| continue oldMethods newMethods n |
	continue := self confirm: '-- CAUTION --
If you have backed up your system and
are prepared to face the consequences of
abandoning all source code, hit Yes.
If you have any doubts, hit No,
to back out with no harm done.'.
	continue
		ifFalse: [^ self inform: 'Okay - no harm done'].
	self garbageCollect.
	oldMethods := OrderedCollection new.
	newMethods := OrderedCollection new.
	n := 0.
	'Removing temp names to save space...'
		displayProgressFrom: 0
		to: CompiledMethod instanceCount
		during: [:bar | self systemNavigation
				allBehaviorsDo: [:cl | cl selectorsAndMethodsDo: [:sel :m | 
							bar value: (n := n + 1).
							oldMethods addLast: m.
							newMethods
								addLast: (m copyWithTrailerBytes: (CompiledMethodTrailer empty ))]]].
	oldMethods asArray elementsExchangeIdentityWith: newMethods asArray.
	Smalltalk closeSourceFiles.
	self flag: #shouldUseAEnsureBlockToBeSureThatTheFileIsClosed.
	"sd: 17 April 2003"
	SmalltalkImage checkChangesFileAvailability: false.
	SmalltalkImage checkSourcesFileAvailability: false! !
