
!DictionaryTest methodsFor: 'test - integrity'!
testAllMethodDictionariesAreHealthy
	
	self assert: (MethodDictionary allInstances select: [:dict | dict isHealthy not ]) isEmpty.! !
