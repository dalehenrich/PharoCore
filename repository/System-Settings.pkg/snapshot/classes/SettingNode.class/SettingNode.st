
MorphTreeNodeModel subclass: #SettingNode
	instanceVariableNames: 'parentName pragma contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Settings-Browser'!

!SettingNode commentStamp: 'alain.plantec 4/20/2009 21:42' prior: 0!
A SettingTreeNode is used by a SettingCollector as a node for setting trees. Built trees can be viewed by a SettingBrowser

Instance Variables
	contents:		<Collection of SettingTreeNode>
	parentNode:		<SettingTreeNode or nil>

contents
	- the children

parentNode
	- the parent or nil if the node is a root
!
