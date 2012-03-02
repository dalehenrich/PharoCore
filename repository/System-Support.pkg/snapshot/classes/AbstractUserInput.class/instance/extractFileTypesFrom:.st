
!AbstractUserInput methodsFor: 'private'!
extractFileTypesFrom: arguments
	"Example in class comment"
	| dict args |
	
	dict := Dictionary new.
	
	arguments isEmptyOrNil ifTrue: [ ^ dict ].
	
	args := arguments select: [ :each | '*.*' match: each ].
	args do: [ :each | 
		| type |
		type := (each subStrings: '.')	 last.
		(dict includesKey: type) ifFalse: [ dict at: type put: OrderedCollection new ].
		(dict at: type) add: each
	].

	dict keysDo: [ :each | dict at: each put: (Array withAll: (dict at: each)) ].

	^ dict! !
