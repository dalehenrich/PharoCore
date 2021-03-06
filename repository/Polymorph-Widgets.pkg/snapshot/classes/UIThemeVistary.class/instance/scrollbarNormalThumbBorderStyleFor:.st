
!UIThemeVistary methodsFor: 'border-styles-scrollbars'!
scrollbarNormalThumbBorderStyleFor: aScrollbar
	"Return the normal thumb borderStyle for the given scrollbar."

	|aColor oc ic|
	aColor := self scrollbarColorFor: aScrollbar.
	oc := aColor alphaMixed: 0.2 with: aColor darker.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {RoundedBorder new
					cornerRadius: 1;
					width: 1;
					baseColor: oc.
				BorderStyle simple
					width: 1;
					baseColor: ic}! !
