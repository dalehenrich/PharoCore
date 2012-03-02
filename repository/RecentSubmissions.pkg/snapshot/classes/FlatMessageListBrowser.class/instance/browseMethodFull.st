
!FlatMessageListBrowser methodsFor: 'menus'!
browseMethodFull
	| myClass |
	(myClass := self selectedClassOrMetaClass) ifNotNil:
		[Smalltalk tools browser fullOnClass: myClass realClass selector: self selectedMessageName]! !
