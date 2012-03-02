
!FreeTypeFontProvider methodsFor: 'file paths'!
platformVMRelativeDirectories

	| answer path |
	answer := OrderedCollection new.
	(path :=  Smalltalk vmPath)
		ifNotEmpty: [ | fontDirectory |
			(path endsWith: FileDirectory slash) ifFalse: [path := path, FileDirectory slash].
			(fontDirectory := FileDirectory on: path, 'Fonts') exists
				ifTrue: [answer addLast: fontDirectory]].
	^answer! !
