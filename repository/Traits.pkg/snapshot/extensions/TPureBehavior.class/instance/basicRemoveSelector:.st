
!TPureBehavior methodsFor: 'adding/removing methods'!
basicRemoveSelector: selector 
	"Assuming that the argument, selector (a Symbol), is a message selector 
	in my method dictionary, remove it and its method."

	| oldMethod |
	oldMethod := self methodDict at: selector ifAbsent: [^ self].
	self methodDict removeKey: selector.

	"Now flush Squeak's method cache, either by selector or by method"
	oldMethod flushCache.
	selector flushCache! !
