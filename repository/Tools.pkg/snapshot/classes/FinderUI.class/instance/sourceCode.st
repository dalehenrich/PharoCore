
!FinderUI methodsFor: 'text areas behavior'!
sourceCode

	^ self selectedClass isNil
		ifTrue: [
			self defaultExplanation]
		ifFalse:[
			self selectedMethod isNil
				ifTrue: [
					self buildDescriptionOf: self selectedClass]
				ifFalse:[
					| method |
					method := self isPatternSymbol
								ifTrue: [self finder findSelector: self selectedMethod]
								ifFalse: [self selectedMethod].
					(self selectedClass >> method) getSource]]! !
