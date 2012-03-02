
MorphTreeModel subclass: #TimeProfiler
	instanceVariableNames: 'win rootMessageTally threshold minPercentageToExpand treeMorph block blockCodePane withBlockCodePane blockSource reportOtherProcesses showLeavesOnly codeTabPane resultPane result withToolBar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Debugger'!

!TimeProfiler commentStamp: 'AlainPlantec 2/19/2010 14:44' prior: 0!
self new openOnBlock: [SimpleGridExample new open]
self new openOnBlock: [ClassTreeExample new openOn: Object]
 MessageTally spyAllOn: [ClassTreeExample new openOn: Object]!
