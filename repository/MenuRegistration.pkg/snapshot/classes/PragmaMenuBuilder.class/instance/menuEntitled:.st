
!PragmaMenuBuilder methodsFor: 'public menu building'!
menuEntitled: aTitle 
	"returns a MenuMorph build from my menuSpec"
	^ (self menuSpec label: aTitle) asMenuMorph! !
