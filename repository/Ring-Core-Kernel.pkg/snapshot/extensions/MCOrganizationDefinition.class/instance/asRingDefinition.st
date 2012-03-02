
!MCOrganizationDefinition methodsFor: '*Ring-Core-Kernel'!
asRingDefinition

	^RGFactory current createOrganization 
		categories: self categories;
		yourself  ! !
