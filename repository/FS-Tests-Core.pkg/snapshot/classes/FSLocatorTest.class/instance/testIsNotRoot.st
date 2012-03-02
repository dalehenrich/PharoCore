
!FSLocatorTest methodsFor: 'compatibility tests'!
testIsNotRoot
	locator := FSLocator image.
	self deny: locator isRoot! !
