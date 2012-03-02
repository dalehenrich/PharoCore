
!PluggableDictionary methodsFor: 'copying'!
copyEmpty
	^super copyEmpty
		hashBlock: hashBlock;
		equalBlock: equalBlock! !
