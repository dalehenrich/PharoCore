
!MCTraitDefinition methodsFor: '*Ring-Core-Kernel'!
printMetaDefinitionOn: stream

	stream nextPutAll: self className, ' classTrait'; 
		 crtab;
		 nextPutAll: 'uses: ';
		 nextPutAll: self classTraitCompositionString.! !
