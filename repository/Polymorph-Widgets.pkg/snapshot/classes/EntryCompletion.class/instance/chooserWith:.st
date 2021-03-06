
!EntryCompletion methodsFor: 'accessing'!
chooserWith: aToken
	| applicants |
	applicants  := self filteredValuesWith: aToken.
	aToken isNil
		ifTrue: [applicants isEmpty 
			ifFalse: [self setChooserWith: nil labels: applicants]]
		ifFalse: [ | meaningfulApplicants | 
			meaningfulApplicants := (applicants copyWithout: nil) asSet.
			meaningfulApplicants isEmpty 
				ifFalse: [(meaningfulApplicants size = 1 and: [aToken = meaningfulApplicants anyOne])
					ifFalse: [(previousToken isNil or: [previousToken size ~= aToken size])
						ifTrue: [self setChooserWith: aToken labels: applicants]]].
			previousToken := aToken].
	^ chooser! !
