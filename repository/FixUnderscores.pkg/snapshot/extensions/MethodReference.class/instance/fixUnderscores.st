
!MethodReference methodsFor: '*FixUnderscores'!
fixUnderscores
	"Replace underscores with :=. Answer true if fixed or no fix necessary, false if manual fix required"

	| src cm ts |
	"Check if we do need to do anything"
	src := self actualClass sourceCodeAt: methodSymbol.
	(src includes: $_) ifFalse: [^true].

	"Chicken out if there is a literal underscore"
	cm := self actualClass compiledMethodAt: methodSymbol.
	(cm hasLiteralSuchThat: [:lit | 
		lit = $_ or: [lit isString and: [lit includes: $_]]]) ifTrue: [^false].

	"Otherwise, replace underscores with :="
	src := src copyReplaceAll: '_' with: ':='.
	ts := self timeStamp.
	ts = '' ifTrue: [ts := nil].
	self actualClass 
		compile: src
		classified: ClassOrganizer default
		withStamp: ts 
		notifying: nil.

	^true
! !
