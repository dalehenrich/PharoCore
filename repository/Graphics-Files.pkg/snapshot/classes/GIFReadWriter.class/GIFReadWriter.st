
ImageReadWriter subclass: #GIFReadWriter
	instanceVariableNames: 'width height bitsPerPixel colorPalette rowByteSize xpos ypos pass interlace codeSize clearCode eoiCode freeCode maxCode prefixTable suffixTable remainBitCount bufByte bufStream transparentIndex mapOf32 localColorTable delay loopCount offset'
	classVariableNames: 'Extension ImageSeparator Terminator'
	poolDictionaries: ''
	category: 'Graphics-Files'!

!GIFReadWriter commentStamp: '<historical>' prior: 0!
Copyright (c) Kazuki Yasumatsu, 1995. All rights reserved.

Used with permission.  Modified for use in Squeak.!
