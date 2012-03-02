
ClassFactoryForTestCase subclass: #ClassFactoryWithOrganization
	instanceVariableNames: 'organization'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-Core-Extensions'!

!ClassFactoryWithOrganization commentStamp: 'LaurentLaffont 5/4/2011 21:25' prior: 0!
I'm a class to create classes with a category. I'm only used by Tests.

I am similar to ClassFactoryForTestCase (i.e., I can be used in place of a ClassFactoryForTestCase), expect that classes may be created on a specific class category.!
