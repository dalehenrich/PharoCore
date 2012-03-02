
!MethodReference methodsFor: '*FixUnderscores'!
fixLFInvisible
	"Replace invisible with space. Answer true if fixed or no fix necessary, false if manual fix required"

	| src ts |
	"Check if we do need to do anything"
	src := self actualClass sourceCodeAt: methodSymbol.
	(src includes: Character lf) ifFalse: [^true].

	"Chicken out if there is a literal underscore"
	"cm := self actualClass compiledMethodAt: methodSymbol.
	(cm hasLiteralSuchThat: [:lit | 
		lit = Character lf or: [lit isString and: [lit includes: Character lf]]]) ifTrue: [^false]."

	"Otherwise, replace underscores with :="
	src := src copyReplaceAll: Character lf asString with: Character space asString, Character cr asString.
	ts := self timeStamp.
	ts = '' ifTrue: [ts := nil].
	self actualClass 
		compile: src
		classified: ClassOrganizer default
		withStamp: ts 
		notifying: nil.

	^true
! !
