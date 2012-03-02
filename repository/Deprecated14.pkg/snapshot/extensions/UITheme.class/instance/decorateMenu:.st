
!UITheme methodsFor: '*Deprecated14'!
decorateMenu: aMenu 
	"decorate aMenu with icons"

	| maxWidth |
	self settings menuWithIcons ifFalse: [^ self].
	maxWidth := 10.

	aMenu items do: [:item | 
		item icon isNil ifTrue: [
			| icon | 
			icon := self iconForMenuItem: item.
			icon isNil ifFalse: [
				item icon:  icon.
				maxWidth := maxWidth max: item icon width.
			]
		]
		ifFalse: [
			item icon:  item icon.
			maxWidth := maxWidth max: item icon width
		].

		item hasSubMenu ifTrue: [
			self decorateMenu: item subMenu.
		].
	].

	maxWidth isZero ifFalse: [
		aMenu addBlankIconsIfNecessary: (self blankIconOfWidth: maxWidth).
	].
! !
