
Object subclass: #TraitBehavior
	uses: TPureBehavior @ {#pureRemoveSelector:->#removeSelector:. #pureAddSelectorSilently:withMethod:->#addSelectorSilently:withMethod:}
	instanceVariableNames: 'methodDict traitComposition localSelectors users'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Traits-Kernel'!

!TraitBehavior commentStamp: 'apb 3/2/2006 17:49' prior: 0!
I declare the instance variables methodDict, traitComposition and localSelectors that normally would be defined on PureBehavior (see class comment of PureBehavior). Furthermore I keep track of where I am used and I provide compatibility methods to make me useable in tools where originally a class was expected.!
