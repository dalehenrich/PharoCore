
!TPureBehavior methodsFor: 'accessing method dictionary'!
sourceCodeAt: selector

	^ (self methodDict at: selector) getSourceFor: selector in: self! !
