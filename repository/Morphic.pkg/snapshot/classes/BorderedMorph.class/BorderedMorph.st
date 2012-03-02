
Morph subclass: #BorderedMorph
	instanceVariableNames: 'borderWidth borderColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Kernel'!

!BorderedMorph commentStamp: 'kfr 10/27/2003 11:17' prior: 0!
BorderedMorph introduce borders to morph. Borders have the instanceVariables borderWidth and borderColor.
 
BorderedMorph new borderColor: Color red; borderWidth: 10; openInWorld.

BorderedMorph also have a varaity of border styles: simple, inset, raised, complexAltFramed, complexAltInset, complexAltRaised, complexFramed, complexInset, complexRaised.
These styles are set using the classes BorderStyle, SimpleBorder, RaisedBorder, InsetBorder and ComplexBorder.

BorderedMorph new borderStyle: (SimpleBorder width: 1 color: Color white); openInWorld.
BorderedMorph new borderStyle: (BorderStyle inset width: 2); openInWorld.


!
