
!Finder methodsFor: 'private-class'!
constructClassNamesDictionary
	"Construct the dictionary in the case I'm searching in class names"
	
	| result listOfClasses listOfAssociations |
	listOfClasses := self computeListOfClasses: self searchingString.
	result := Dictionary new.
	listOfClasses do: [:each | result at: each put: (each methodDict keys sort: [:a :b | a < b])].
	self resultDictionary: result.! !
