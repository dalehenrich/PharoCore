
!DropListMorph methodsFor: 'as yet unclassified'!
positionList
	"Position the list morph to fit on the display."

	self boundsInWorld bottomLeft y + self listHeight > self world bottom
		ifTrue: [self buttonMorph roundedCorners: (self roundedCorners copyWithoutAll: #(1 4)).
				self roundedCorners: (self roundedCorners copyWithoutAll: #(1 4)).
				self listMorph
					bounds: (self boundsInWorld topLeft - (0 @ self listHeight) extent: self width @ self listHeight)]
		ifFalse: [self buttonMorph roundedCorners: (self roundedCorners copyWithoutAll: #(1 2 3)).
				self roundedCorners: (self roundedCorners copyWithoutAll: #(2 3)).
				self listMorph
					bounds: (self boundsInWorld bottomLeft extent: self width @ self listHeight)]! !
