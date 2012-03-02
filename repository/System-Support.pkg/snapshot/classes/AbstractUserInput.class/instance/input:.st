
!AbstractUserInput methodsFor: 'input'!
input: anOrderedCollection
	"Take a collection of String and sort them by options and types"
	
	data := anOrderedCollection.
	dataSortByOptions := self extractMinusParametersFrom: anOrderedCollection.
	dataSortByTypes := self extractFileTypesFrom: anOrderedCollection.! !
