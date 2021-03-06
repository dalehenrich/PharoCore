
!SystemNavigationTest methodsFor: 'testing'!
testIsUnsentMessagesInCategory
	| class otherClass expecetedMethReferencesInClass expecetedMethReferencesInOtherClass |
	class := self classFactory newClass.
	class compile: 'messageNeverSentInTheSystemXXXXThisIsForTest ^self messageSentFromClassXXXXThisIsForTest'.
	class compile: 'sentMessage'.
	otherClass := self classFactory newClass.
	otherClass compileSilently: 'messageSentFromClassXXXXThisIsForTest ^self sentMessage'.
	otherClass compileSilently: 'otherMessageNeverSentInTheSystemXXXXThisIsForTest ^self'.
	expecetedMethReferencesInClass := (class selectors copyWithout: #sentMessage) collect: [:selector|
		self createMethodNamed: selector realParent: class ].
	expecetedMethReferencesInOtherClass := (otherClass selectors copyWithout: #messageSentFromClassXXXXThisIsForTest) collect: [:selector|
		self createMethodNamed: selector realParent: otherClass].
	self assert: (self systemNavigationToTest unsentMessagesInCategory: self classFactory defaultCategory) asSet = (expecetedMethReferencesInClass, expecetedMethReferencesInOtherClass) asSet! !
