
Object subclass: #JPEGColorComponent
	instanceVariableNames: 'currentX currentY hSampleFactor vSampleFactor mcuBlocks widthInBlocks heightInBlocks dctSize mcuWidth mcuHeight priorDCValue id qTableIndex dcTableIndex acTableIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Files'!

!JPEGColorComponent commentStamp: '<historical>' prior: 0!
I represent a single component of color in JPEG YCbCr color space.  I can accept a list of blocks in my component from the current MCU, then stream the samples from this block for use in color conversion.  I also store the running DC sample value for my component, used by the Huffman decoder.

The following layout is fixed for the JPEG primitives to work:
	currentX 		<SmallInteger>
	currentY 		<SmallInteger>
	hSampleFactor 	<SmallInteger>
	vSampleFactor 	<SmallInteger>
	mcuBlocks 		<Array of: <IntegerArray of: DCTSize2 * Integer>>
	widthInBlocks 	<SmallInteger>
	heightInBlocks 	<SmallInteger>
	dctSize 			<SmallInteger>
	mcuWidth 		<SmallInteger>
	mcuHeight 		<SmallInteger>
	priorDCValue 	<SmallInteger>
!
