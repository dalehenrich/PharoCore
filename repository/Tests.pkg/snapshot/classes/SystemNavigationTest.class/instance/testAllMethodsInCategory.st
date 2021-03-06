
!SystemNavigationTest methodsFor: 'testing'!
testAllMethodsInCategory
	"This is a non regression test for
	http://bugs.squeak.org/view.php?id=6986 allMethodsInCategory:
	should return a list of existing methods"
	| classAndMethods methodReferences |
	classAndMethods := self systemNavigationToTest allMethodsInCategory: 'removing'.
	methodReferences := classAndMethods
				collect: [:e | e isString
						ifTrue: [Smalltalk tools messageList
								parse: e
								toClassAndSelector: [:cls :sel | self createMethodNamed: self realParent: cls]]
						ifFalse: [e]].
	self
		assert: (methodReferences
					allSatisfy: [:mr | mr realClass includesSelector: mr selector])! !
