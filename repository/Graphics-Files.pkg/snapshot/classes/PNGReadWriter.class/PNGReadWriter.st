
ImageReadWriter subclass: #PNGReadWriter
	instanceVariableNames: 'chunk form width height depth backColor bitsPerChannel colorType interlaceMethod bitsPerPixel bytesPerScanline thisScanline prevScanline rowSize globalDataChunk unknownChunks palette transparentPixelValue filtersSeen cachedDecoderMap bigEndian'
	classVariableNames: 'BPP BlockHeight BlockWidth Debugging StandardColors StandardSwizzleMaps'
	poolDictionaries: ''
	category: 'Graphics-Files'!

!PNGReadWriter commentStamp: '<historical>' prior: 0!
I am a subclass of ImageReadWriter that decodes Portable Network Graphics
(PNG) images.

Submitted by Duane Maxwell!
