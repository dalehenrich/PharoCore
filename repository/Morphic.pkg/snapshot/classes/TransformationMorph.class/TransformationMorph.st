
TransformMorph subclass: #TransformationMorph
	uses: TAbleToRotate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Basic'!

!TransformationMorph commentStamp: 'AlainPlantec 5/5/2010 09:19' prior: 0!
A TransformationMorph is like a transformMorph, except that it does not clip, and its bounds include its entire submorph.  TransformationMorphs are assumed to have only one submorph -- the idea is that it is a wrapper that enables its submorph to scale and rotate.  A TransformationMorph may come to have more than one submorph if, eg, a menu sprouts a sub menu, using the transformationMorph temporarily as its world, but this ability is only sparsely supported (as in layoutChanged).

See TransformationMorph class example1 method.!
