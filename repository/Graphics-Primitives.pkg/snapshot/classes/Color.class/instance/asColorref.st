
!Color methodsFor: 'conversions'!
asColorref
	"Convert the receiver into a colorref"
	^(self red * 255) asInteger + ((self green * 255) asInteger << 8) + ((self green * 255) asInteger << 16)! !
