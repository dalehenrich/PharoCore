
!SystemNavigationTest methodsFor: 'testing'!
testIsUnsentMessagesInClass
	| class otherClass expecetedMethReferences |
	class := self classFactory newClass.
	class compile: 'messageNeverSentInTheSystemXXXXThisIsForTest ^self messageSentFromClassXXXXThisIsForTest'.
	class compile: 'otherMessageNeverSentInTheSystemXXXXThisIsForTest ^self'.
	class compile: 'sentMessage'.
	otherClass := self classFactory newClass.
	otherClass compileSilently: 'messageSentFromClassXXXXThisIsForTest self sentMessage'.
	expecetedMethReferences := (class selectors copyWithout: #sentMessage) collect: [:selector|
		self createMethodNamed: selector realParent: class].
	self assert: (self systemNavigationToTest unsentMessagesInClass: class) asSet = expecetedMethReferences asSet! !
