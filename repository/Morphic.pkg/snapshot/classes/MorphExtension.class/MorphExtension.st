
Object subclass: #MorphExtension
	instanceVariableNames: 'locked visible sticky balloonText externalName eventHandler otherProperties fillStyle layoutPolicy layoutFrame layoutProperties borderStyle cornerStyle actionMap clipSubmorphs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Kernel'!

!MorphExtension commentStamp: '<historical>' prior: 0!
MorphExtension provides access to extra instance state that is not required in most simple morphs.  This allows simple morphs to remain relatively lightweight while still admitting more complex structures as necessary.  The otherProperties field takes this policy to the extreme of allowing any number of additional named attributes, albeit at a certain cost in speed and space.!
