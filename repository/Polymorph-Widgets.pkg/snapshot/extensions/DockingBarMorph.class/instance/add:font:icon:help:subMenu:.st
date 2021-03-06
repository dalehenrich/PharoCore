
!DockingBarMorph methodsFor: '*Polymorph-Widgets'!
add: wordingString font: aFont icon: aForm help: helpString subMenu: aMenuMorph 
	"Append the given submenu with the given label."
	
	| item |
	item := ToggleMenuItemMorph new.
	item
		font: aFont;
		contents: wordingString;
		subMenu: aMenuMorph;
		icon: aForm.
	helpString isNil
		ifFalse: [item setBalloonText: helpString].
	self addMorphBack: item! !
