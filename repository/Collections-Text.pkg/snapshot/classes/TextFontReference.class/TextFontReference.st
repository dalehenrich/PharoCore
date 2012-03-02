
TextFontChange subclass: #TextFontReference
	instanceVariableNames: 'font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Text'!

!TextFontReference commentStamp: '<historical>' prior: 0!
A TextFontReference encodes a font change applicable over a given range of text.  The font reference is absolute:  unlike a TextFontChange, it is independent of the textStyle governing display of this text.!
