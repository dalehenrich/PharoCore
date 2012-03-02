
!ScrollBar methodsFor: '*Polymorph-Widgets'!
themeChanged
	"Update the rounding of buttons, slider and paging area."

	pagingArea cornerStyle: (self theme scrollbarPagingAreaCornerStyleIn: self window).
	slider cornerStyle: (self theme scrollbarThumbCornerStyleIn: self window).
	upButton cornerStyle: (self theme scrollbarButtonCornerStyleIn: self window).
	downButton cornerStyle: (self theme scrollbarButtonCornerStyleIn: self window).
	super themeChanged! !
