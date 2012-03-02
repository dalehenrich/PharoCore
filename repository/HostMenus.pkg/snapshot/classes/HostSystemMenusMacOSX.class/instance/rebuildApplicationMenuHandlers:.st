
!HostSystemMenusMacOSX methodsFor: 'utility'!
rebuildApplicationMenuHandlers: aMenuRef
	| maximumItems applicationMenuItemsTitles applicationMenuItems m applicationQuit |
	maximumItems := self countMenuItems: aMenuRef.
	applicationMenuItemsTitles := (1 to: maximumItems) collect: [:i | self getMenuItemText: aMenuRef item: i]. 	
	applicationMenuItems := applicationMenuItemsTitles collect: [:e | HostSystemMenusMenuItem menuString: e].
	"At this point only 1 item has quit in the text otherwise this would not be reliable."
	applicationQuit := applicationMenuItems detect: [:e | e text includesSubstring: 'Quit' caseSensitive: false] ifNone: [nil].
	applicationQuit
		ifNil: [Transcript cr; show: 'Warning: no Quit host menu found.'; cr]
		ifNotNil: [
			applicationQuit handler: [:evt | | result |
				result := self confirm: 'Save changes before quitting?'
								orCancel: [nil].
				result ifNotNil: [
					Smalltalk snapshot: result andQuit: true]]].
	m := Dictionary new.
	applicationMenuItems doWithIndex:[:e :i | m at: i put: e].
	self menus at: (self getMenuID: aMenuRef) put: m.

! !
