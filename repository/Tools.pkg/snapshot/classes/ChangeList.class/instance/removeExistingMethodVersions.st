
!ChangeList methodsFor: 'menu actions'!
removeExistingMethodVersions
	"Remove all up to date version of entries from the receiver"
	
	| newChangeList newList |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	changeList with: list do: [ :chRec :strNstamp | 
			| str keep sel cls | 
			keep := true.
			(cls := chRec methodClass) ifNotNil:
				[ str := chRec string.
				sel := cls parserClass new parseSelector: str.
				keep := (cls sourceCodeAt: sel ifAbsent: ['']) asString ~= str].
			keep ifTrue:
					[ newChangeList add: chRec.
					newList add: strNstamp]].
	self refreshNewList: newChangeList andList: newList! !
