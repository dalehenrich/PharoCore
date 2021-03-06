
Color subclass: #TranslucentColor
	instanceVariableNames: 'alpha'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Primitives'!

!TranslucentColor commentStamp: '<historical>' prior: 0!
A TranslucentColor behaves just like a normal color, except that it will pack its alpha value into the high byte of a 32-bit pixelValue.  This allows creating forms with translucency for use with the alpha blend function of BitBlt.  An alpha of zero is transparent, and 1.0 is opaque.!
