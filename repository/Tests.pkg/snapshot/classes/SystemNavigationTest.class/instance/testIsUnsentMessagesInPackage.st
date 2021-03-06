
!SystemNavigationTest methodsFor: 'testing'!
testIsUnsentMessagesInPackage
	"self debug: #testIsUnsentMessagesInPackage"
	
	| class otherClass expectedMethReferencesInClass expectedMethReferencesInOtherClass myPackageName |
	myPackageName := 'ACategoryForTesting'.
	class := self classFactory newClassInCategory: (myPackageName, '-One') asSymbol.
	class compileSilently: 'messageNeverSentInTheSystemXXXXThisIsForTest ^self messageSentFromClassXXXXThisIsForTest'.
	class compileSilently: 'sentMessage'.
	otherClass := self classFactory newClassInCategory: (myPackageName, '-Two') asSymbol.
	otherClass compileSilently: 'messageSentFromClassXXXXThisIsForTest self sentMessage'.
	otherClass compileSilently: 'otherMessageNeverSentInTheSystemXXXXThisIsForTest ^self'.
	expectedMethReferencesInClass := (class selectors copyWithout: #sentMessage) collect: [:selector| (class >> selector) asRingDefinition].
	expectedMethReferencesInOtherClass := (otherClass selectors copyWithout: #messageSentFromClassXXXXThisIsForTest) collect: [:selector| (otherClass >> selector) asRingDefinition].
	self assert: (self systemNavigationToTest unsentMessagesInPackageNamed: myPackageName) asSet = (expectedMethReferencesInClass, expectedMethReferencesInOtherClass) asSet! !
