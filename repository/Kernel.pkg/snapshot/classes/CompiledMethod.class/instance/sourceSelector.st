
!CompiledMethod methodsFor: 'source code management'!
sourceSelector
	"Answer my selector extracted from my source.  If no source answer nil"

	| sourceString |
	sourceString := self getSourceFromFile ifNil: [^ nil].
	^self methodClass parserClass new parseSelector: sourceString! !
