
!CompiledMethod methodsFor: 'printing'!
who
	"Answer an Array of the class in which the receiver is defined and the 
	selector to which it corresponds."

	self hasNewPropertyFormat ifTrue:[^{self methodClass. self selector}].
	self systemNavigation allBehaviorsDo: 
		[:class | 
		(class methodDict keyAtIdentityValue: self ifAbsent: [nil]) ifNotNil:
			[:sel| ^Array with: class with: sel]].
	^Array with: #unknown with: #unknown! !
