
!SystemNavigation methodsFor: '*Tools-Browser'!
browseHierarchy: aClass selector: aSelector
	"Open a browser"
	(aClass == nil)  ifTrue: [^ self].

	^ Smalltalk tools browser new
			setClass: aClass 
			selector: aSelector;
			spawnHierarchy;
			yourself.! !
