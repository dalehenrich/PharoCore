
Object subclass: #ColorMap
	instanceVariableNames: 'shifts masks colors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Primitives'!

!ColorMap commentStamp: 'LaurentLaffont 5/4/2011 21:28' prior: 0!
I'm a transformation of pixel values. I apply up to four masks and shits to compute the transformed pixel value.

I'm used when applying a BitBlt transfer, whenever pixels from a source to a destination have diferent depths. For further information refer to BitBlt class comments.

To see me in action evaluate: BitBlt exampleColorMap!
