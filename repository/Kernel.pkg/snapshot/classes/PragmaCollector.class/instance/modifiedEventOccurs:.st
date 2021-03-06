
!PragmaCollector methodsFor: 'system changes'!
modifiedEventOccurs: anEvent 
	"
	a method has been updated: try to update an handler:
	1 - I already have one for the method, then
	do nothing, 
	2 - I do not have one but method has an acceptable
	pragma in it, then I try to add a new handler
	3 - I have one but changed method has no more
	acceptable pragma in it, then the handler is removed.
	"
	Pragma
		withPragmasIn: anEvent itemClass
		do: [:pragma | pragma selector = anEvent itemSelector
				ifTrue: [(self 
								detect: [:oldprag | oldprag selector = pragma selector
										and: [oldprag methodClass = anEvent itemClass]])
						ifNotNil: [:oldprag | ^ self updatePragma: oldprag].
					^ self addPragma: pragma]].
	"No pragma but an handler for the method"
	(self pragmaWithSelector: anEvent itemSelector inClass: anEvent itemClass)
		ifNotNil: [:found | self removePragma: found]! !
