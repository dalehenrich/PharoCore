
SystemWindow subclass: #PluggableSystemWindow
	instanceVariableNames: 'getLabelSelector getChildrenSelector children closeWindowSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!PluggableSystemWindow commentStamp: 'ar 2/11/2005 20:14' prior: 0!
A pluggable system window. Fixes the issues with label retrieval and adds support for changing children.!
