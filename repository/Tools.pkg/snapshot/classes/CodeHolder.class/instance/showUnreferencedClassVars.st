
!CodeHolder methodsFor: 'traits'!
showUnreferencedClassVars
	"Search for all class variables known to the selected class, and put up a 
	list of those that have no references anywhere in the system. The 
	search includes superclasses, so that you don't need to navigate your 
	way to the class that defines each class variable in order to determine 
	whether it is unreferenced"
	| cls aList aReport |
	((cls := self selectedClass) isNil or: [cls isTrait]) ifTrue: [^ self].
	aList := self systemNavigation allUnreferencedClassVariablesOf: cls.
	aList size = 0
		ifTrue: [^ self inform: 'There are no unreferenced
class variables in
' , cls name].
	aReport := String
				streamContents: [:aStream | 
					aStream nextPutAll: 'Unreferenced class variable(s) in ' translated, cls name;
						 cr.
					aList
						do: [:el | aStream tab; nextPutAll: el; cr]].
	self crTrace: aReport.
	self inform: aReport! !
