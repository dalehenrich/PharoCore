
!Debugger methodsFor: 'accessing'!
recompileCurrentMethodTo: aText notifying: aController
	|classOfMethod category selector newMethod| 
	classOfMethod := self selectedClass.
	category := self selectedMessageCategoryName.
	selector := self selectedClass parserClass new parseSelector: aText.
	(selector == self selectedMessageName
	 or: [(self selectedMessageName beginsWith: 'DoIt')
		and: [selector numArgs = self selectedMessageName numArgs]]) ifFalse:
		[self inform: 'can''t change selector'.
		 ^nil].
	selector := classOfMethod
				compile: aText
				classified: category
				notifying: aController.
	selector ifNil: [^nil]. "compile cancelled"
	contents := aText.
	newMethod := classOfMethod compiledMethodAt: selector.
	newMethod isQuick ifTrue:
		[self down.
		 self selectedContext jump: (self selectedContext previousPc - self selectedContext pc)].
	^ newMethod
	! !
