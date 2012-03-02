
!SystemNavigation methodsFor: 'query'!
allSelect: aBlock 
	"Answer a SortedCollection of each method that, when used as 
	the block  
	argument to aBlock, gives a true result."
	| aCollection |
	aCollection := SortedCollection new.
	Cursor execute
		showWhile: [self
				allBehaviorsDo: [:class | class
						selectorsAndMethodsDo: [:sel :meth | (aBlock value: meth)
								ifTrue: [aCollection add: class name , ' ' , sel]]]].
	^ aCollection! !
