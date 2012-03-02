
Object subclass: #MorphicEventDispatcher
	instanceVariableNames: 'lastType lastDispatch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Events'!

!MorphicEventDispatcher commentStamp: '<historical>' prior: 0!
The class represents a strategy for dispatching events to some immediate child of a morph. It is used by morphs to delegate the somewhat complex action of dispatching events accurately. !
