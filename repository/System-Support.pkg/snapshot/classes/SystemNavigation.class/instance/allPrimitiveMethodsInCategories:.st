
!SystemNavigation methodsFor: 'query'!
allPrimitiveMethodsInCategories: aList 
	"Answer an OrderedCollection of all the methods that are implemented by 
	primitives in the given categories. 1/26/96 sw"
	"SystemNavigation new allPrimitiveMethodsInCategories:  
		#('Collections-Streams' 'Files-Streams' 'Files-Abstract' 'Files-Macintosh')"

	| aColl |
	aColl := OrderedCollection new: 200.
	self
		allBehaviorsDo: [:aClass | (aList includes: (SystemOrganization categoryOfElement: aClass theNonMetaClass name asString) asString)
				ifTrue: [aClass
						selectorsAndMethodsDo: [:sel :method | 
							method primitive ~= 0
								ifTrue: [aColl addLast: aClass name , ' ' , sel , ' ' , method primitive printString]]]].
	^ aColl! !
