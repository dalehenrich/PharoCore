
PluggableListMorph subclass: #PluggableMessageCategoryListMorph
	instanceVariableNames: 'getRawListSelector priorRawList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Pluggable Widgets'!

!PluggableMessageCategoryListMorph commentStamp: '<historical>' prior: 0!
A variant of PluggableListMorph designed specially for efficient handling of the --all-- feature in message-list panes.  In order to be able *quickly* to check whether there has been an external change to the list, we cache the raw list for identity comparison (the actual list is a combination of the --all-- element and the the actual list).!
