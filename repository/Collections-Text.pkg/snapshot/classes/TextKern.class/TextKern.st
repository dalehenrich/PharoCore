
TextAttribute subclass: #TextKern
	instanceVariableNames: 'kern active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Text'!

!TextKern commentStamp: '<historical>' prior: 0!
A TextKern encodes a kerning change applicable over a given range of text.  Positive values of kern spread letters out, negative kern will cause them to overlap more.  Note that kerns other than 0 will display somewhat slower, as kerning is not yet supported in the text scanning primitive. !
