
!SystemNavigation methodsFor: 'message sends'!
unsentMessagesInPackageNamed: packageName
	| unsentMessages |
	unsentMessages := self unsentMessagesInCategory: packageName.	
	(self categoriesInPackageNamed: packageName) do: [:category|
		unsentMessages addAll: (self unsentMessagesInCategory: category)].
	^unsentMessages 
	! !
