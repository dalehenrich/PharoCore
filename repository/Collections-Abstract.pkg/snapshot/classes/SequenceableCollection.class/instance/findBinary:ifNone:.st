
!SequenceableCollection methodsFor: 'enumerating'!
findBinary: aBlock ifNone: exceptionBlock
	"Search for an element in the receiver using binary search.
	The argument aBlock is a one-element block returning
		0 	- if the element is the one searched for
		<0	- if the search should continue in the first half
		>0	- if the search should continue in the second half
	If no matching element is found, evaluate exceptionBlock."
	| index low high test item |
	low := 1.
	high := self size.
	[index := high + low // 2.
	low > high] whileFalse:[
		test := aBlock value: (item := self at: index).
		test = 0 
			ifTrue:[^item]
			ifFalse:[test > 0
				ifTrue: [low := index + 1]
				ifFalse: [high := index - 1]]].
	^exceptionBlock value! !
