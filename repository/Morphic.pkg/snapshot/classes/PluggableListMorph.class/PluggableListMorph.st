
ScrollPane subclass: #PluggableListMorph
	instanceVariableNames: 'list getListSelector getListSizeSelector getListElementSelector getIndexSelector setIndexSelector keystrokeActionSelector autoDeselect lastKeystrokeTime lastKeystrokes doubleClickSelector handlesBasicKeys potentialDropRow listMorph hScrollRangeCache dragItemSelector dropItemSelector wantsDropSelector wrapSelector searchedElement multipleSelection dragOnOrOff setSelectionListSelector getSelectionListSelector resetListSelector keystrokeSelector backgroundColoringBlockOrSelector separatorBlockOrSelector separatorSize separatorColor lastNonZeroIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Pluggable Widgets'!

!PluggableListMorph commentStamp: '<historical>' prior: 0!
...

When a PluggableListMorph is in focus, type in a letter (or several
letters quickly) to go to the next item that begins with that letter.
Special keys (up, down, home, etc.) are also supported.!
