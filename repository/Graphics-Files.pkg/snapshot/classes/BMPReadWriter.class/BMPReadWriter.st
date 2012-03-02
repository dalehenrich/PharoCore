
ImageReadWriter subclass: #BMPReadWriter
	instanceVariableNames: 'bfType bfSize bfOffBits biSize biWidth biHeight biPlanes biBitCount biCompression biSizeImage biXPelsPerMeter biYPelsPerMeter biClrUsed biClrImportant'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Files'!

!BMPReadWriter commentStamp: 'LaurentLaffont 5/4/2011 21:27' prior: 0!
I read and write BMP files.

Example to save and load a screenshot of the world in a .bmp file:

BMPReadWriter 
   putForm: (Form fromDisplay: (0@0 corner: 400@400))
   onFileNamed: '/tmp/screenshot.bmp'.

(ImageMorph withForm: (BMPReadWriter formFromFileNamed: '/tmp/screenshot.bmp')) openInWindow.!
