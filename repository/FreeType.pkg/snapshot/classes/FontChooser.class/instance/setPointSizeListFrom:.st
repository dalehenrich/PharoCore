
!FontChooser methodsFor: 'selected'!
setPointSizeListFrom: aFontFamilyMember
	| style old new |
	old := pointSizeList.
	(aFontFamilyMember isKindOf: FontFamilyMemberAbstract)
		ifTrue:[
			style := TextStyle named: aFontFamilyMember family familyName.
			style ifNotNil:[
				new := style pointSizes collect: [:each | each reduce asString padded: #left to: 3 with: $ ]]].
	new ifNil:[new := (1 to: 256) collect: [:each | each asString padded: #left to: 3 with: $ ]].
	pointSizeList := new.
	old ~= new ifTrue:[self changed: #pointSizeList]! !
