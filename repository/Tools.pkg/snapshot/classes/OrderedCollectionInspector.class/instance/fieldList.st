
!OrderedCollectionInspector methodsFor: 'as yet unclassified'!
fieldList
	object ifNil: [ ^ OrderedCollection new].

	"Guard against incomplete object. You can not ask its size."
	(object instVarAt: 3) "lastIndex"
		ifNil: [^self baseFieldList].
		
	^ self baseFieldList ,
		(object size <= (self i1 + self i2)
			ifTrue: [(1 to: object size)
						collect: [:i | i printString]]
			ifFalse: [(1 to: self i1) , (object size-(self i2-1) to: object size)
						collect: [:i | i printString]])
"
OrderedCollection new inspect
(OrderedCollection newFrom: #(3 5 7 123)) inspect
(OrderedCollection newFrom: (1 to: 1000)) inspect
"! !
