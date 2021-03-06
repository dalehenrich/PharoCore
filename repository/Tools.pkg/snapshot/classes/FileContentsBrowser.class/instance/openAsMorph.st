
!FileContentsBrowser methodsFor: 'creation'!
openAsMorph
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	| window aListExtent next mySingletonList |
	window := (SystemWindow labelled: 'later') model: self.
	self packages size = 1
		ifTrue: [
			aListExtent := 0.333333 @ 0.34.
			self systemCategoryListIndex: 1.
			mySingletonList := PluggableListMorph on: self list: #systemCategorySingleton
					selected: #indexIsOne changeSelected: #indexIsOne:
					menu: nil
					keystroke: #packageListKey:from:.
			mySingletonList hideScrollBarsIndefinitely.
			window addMorph: mySingletonList frame: (0@0 extent: 1.0@0.06).
			next := 0@0.06]
		ifFalse: [
			aListExtent := 0.25 @ 0.4.
			window addMorph: (PluggableListMorph on: self list: #systemCategoryList
					selected: #systemCategoryListIndex changeSelected: #systemCategoryListIndex:
					menu: nil
					keystroke: #packageListKey:from:)
				frame: (0@0 extent: aListExtent).
			next := aListExtent x @ 0].

	self addClassAndSwitchesTo: window at: (next extent: aListExtent) plus: 0.

	next := next + (aListExtent x @ 0).
	window addMorph: (PluggableListMorph on: self list: #messageCategoryList
			selected: #messageCategoryListIndex changeSelected: #messageCategoryListIndex:
			menu: #messageCategoryMenu:)
		frame: (next extent: aListExtent).
	next := next + (aListExtent x @ 0).
	window addMorph: (PluggableListMorph on: self list: #messageList
			selected: #messageListIndex changeSelected: #messageListIndex:
			menu: #messageListMenu:
			keystroke: #messageListKey:from:)
		frame: (next extent: aListExtent).

	self addLowerPanesTo: window at: (0@0.4 corner: 1@1) with: nil.
	^ window
! !
