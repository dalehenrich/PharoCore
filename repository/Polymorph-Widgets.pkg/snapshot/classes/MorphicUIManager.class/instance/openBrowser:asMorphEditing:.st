
!MorphicUIManager methodsFor: 'ui requests'!
openBrowser: aBrowser asMorphEditing: editString
	"Create a pluggable version of all the morphs for a Browser in Morphic"
	| window hSepFrac |

	hSepFrac := 0.4.
	window := (SystemWindow labelled: 'later') model: aBrowser.

"The method SystemWindow>>addMorph:fullFrame: checks scrollBarsOnRight, then adds the morph at the back if true, otherwise it is added in front. But flopout hScrollbars need the lowerpanes to be behind the upper ones in the draw order. Hence the value of scrollBarsOnRight affects the order in which the lowerpanes are added. "
	window theme settings scrollBarsOnRight ifFalse:
		[aBrowser 
			addLowerPanesTo: window 
			at: (0@hSepFrac corner: 1@1) 
			with: editString].
		
	window 
		addMorph: aBrowser buildMorphicSystemCatList
		frame: (0@0 corner: 0.25@hSepFrac).
		
	aBrowser 
		addClassAndSwitchesTo: window 
		at: (0.25@0 corner: 0.5@hSepFrac)
		plus: 0.
		
	window 
		addMorph: aBrowser buildMorphicMessageCatList
		frame: (0.5@0 extent: 0.25@hSepFrac).
		
	window addMorph: aBrowser buildMorphicMessageList
		frame: (0.75@0 extent: 0.25@hSepFrac).

	window theme settings scrollBarsOnRight ifTrue:
		[aBrowser 
			addLowerPanesTo: window 
			at: (0@hSepFrac corner: 1@1) 
			with: editString].

	window setUpdatablePanesFrom: #(systemCategoryList classList messageCategoryList messageList).
	^ window! !
