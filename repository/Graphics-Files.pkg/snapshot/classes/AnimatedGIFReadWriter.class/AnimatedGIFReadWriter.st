
GIFReadWriter subclass: #AnimatedGIFReadWriter
	instanceVariableNames: 'forms delays comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Files'!

!AnimatedGIFReadWriter commentStamp: 'LaurentLaffont 5/4/2011 21:27' prior: 0!
Read an animated GIF file.

Example: open all images of an animated GIF file in a Morphic window

gifPath :=  '/path/to/my_animated.gif'.
forms := (AnimatedGIFReadWriter formsFromFileNamed: gifPath) forms.
content := UITheme builder newRow: (forms collect: [:aForm| UITheme builder newImage: aForm]).
content openInWindowLabeled: 'Content of ', gifPath.!
