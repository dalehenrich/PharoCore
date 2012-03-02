
!TTokenReplace methodsFor: 'copying'!
copyReplaceAll: oldSubstring with: newSubstring asTokens: ifTokens
	^ ifTokens 
			ifTrue: [ self copyReplaceTokens: oldSubstring with: newSubstring ]
			ifFalse: [ self copyReplaceAll: oldSubstring with: newSubstring ]
! !
