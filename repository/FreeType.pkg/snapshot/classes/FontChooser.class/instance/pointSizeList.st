
!FontChooser methodsFor: 'accessing'!
pointSizeList

	^pointSizeList ifNil:[ pointSizeList := (1 to: 256) collect: [:each | each asString padded: #left to: 3 with: $ ]]! !
