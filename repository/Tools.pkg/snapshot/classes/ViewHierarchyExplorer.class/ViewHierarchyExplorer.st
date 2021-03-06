
ObjectExplorer subclass: #ViewHierarchyExplorer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Explorer'!

!ViewHierarchyExplorer commentStamp: 'SW 5/22/2009 12:30' prior: 0!
A ViewHierarchyExplorer is specialized Explorer that works exclusively with morphs.  It provides the user with a tree view of the Morph Composition Hierarchy and allows you to quickly identify a tree item with its corresponding morph by "flashing" the node in question.  This tool facilitates the understanding of complex morph compositions.

A View Hierarchy Explorer can be opened from the Halo Debug Menu > "explore view hierarchy", or simply send #ExploreViewHierarchy to any morph instance.

try..
[World exploreViewHierarchy]
and
[OBPackageBrowser open exploreViewHierarchy]!
