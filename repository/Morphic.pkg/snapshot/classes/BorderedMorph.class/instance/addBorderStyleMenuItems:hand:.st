
!BorderedMorph methodsFor: 'menu'!
addBorderStyleMenuItems: aMenu hand: aHandMorph
	"Add border-style menu items"

	| subMenu |
	subMenu := UIManager default 
					newMenuIn: self for: self.
	subMenu addStayUpItemSpecial.
	subMenu addList: 
		{{'border color...' translated. #changeBorderColor:}.
		{'border width...' translated. #changeBorderWidth:}}.
	subMenu addLine.
	BorderStyle borderStyleChoices do:
		[:sym | (self borderStyleForSymbol: sym)
			ifNotNil:
				[subMenu add: sym translated target: self selector: #setBorderStyle: argument: sym]].
	aMenu add: 'border style' translated subMenu: subMenu
! !
