
!Finder methodsFor: 'private'!
constructDictionary
	"I construct the adequate dictionary regarding the search mode"

	| symbol |
	self searchingString isEmpty ifTrue: [ ^ self resultDictionary: Dictionary new].
	symbol := self currentSearchMode.
	symbol = #Selectors
		ifTrue: [ ^self constructDictionaryWithMessagesNameSearch: self searchingString].
	symbol = #Classes
		ifTrue: [ ^self constructClassNamesDictionary].
	symbol = #Source
		ifTrue: [ ^self constructSourceDictionary].
	symbol = #Examples
		ifTrue: [ ^self constructDictionaryWithMethodFinder: self searchingString].
	symbol = #Pragmas
		ifTrue: [ ^self constructDictionaryWithPragmaSearch: self searchingString].		
	self error: 'Error with radio buttons'! !
