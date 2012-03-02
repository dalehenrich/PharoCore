
!SystemNavigationTest methodsFor: 'setUp-tearDown'!
setUp
	super setUp. 
	navigator := self createSystemNavigationToTest.
	classFactory := self createClassFactory.
	! !
