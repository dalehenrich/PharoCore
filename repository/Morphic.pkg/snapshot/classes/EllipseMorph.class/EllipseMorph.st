
BorderedMorph subclass: #EllipseMorph
	uses: TAbleToRotate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Basic'!

!EllipseMorph commentStamp: 'kfr 10/27/2003 10:32' prior: 0!
A round BorderedMorph. Supports borderWidth and borderColor. 
Only simple borderStyle is implemented.

EllipseMorph new borderWidth:10; borderColor: Color green; openInWorld.
EllipseMorph new borderStyle:(SimpleBorder width: 5 color: Color blue); openInWorld.!
