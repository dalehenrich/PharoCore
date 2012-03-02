
!DynamicMessageImplementor methodsFor: 'evaluating-private'!
writeGetterSourceCode

	stream 
		cr;
		tab;
		nextPutAll: '^ ';
		nextPutAll: message selector ! !
