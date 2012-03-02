
!AbstractTool methodsFor: 'class'!
moveInNewPackage: aCollection

	| labels reject lines oldIndex newName item aPackage |
	aCollection ifEmpty: [^self].
	aPackage := aCollection first package.	
	labels := self model packages collect: [:each | each name].
	lines := {0}.
		
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: ('Change Package (current: ', aPackage name,')').
	newName ifNil: [ ^self ].
	newName := newName asSymbol.

	item := self browsedEnvironment packageOrganizer packageNamed: newName.
	aCollection do: [:aClass |
		aPackage removeClass: aClass.
		item addClassDefinition: aClass.
		aClass category: item name ].
	^ item! !
