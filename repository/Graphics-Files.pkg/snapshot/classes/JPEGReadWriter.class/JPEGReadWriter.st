
ImageReadWriter subclass: #JPEGReadWriter
	instanceVariableNames: 'width height components currentComponents qTable hACTable hDCTable restartInterval restartsToGo mcuWidth mcuHeight mcusPerRow mcuRowsInScan mcuMembership mcuSampleBuffer mcuImageBuffer majorVersion minorVersion dataPrecision densityUnit xDensity yDensity ss se ah al sosSeen residuals ditherMask'
	classVariableNames: 'ConstBits DCTK1 DCTK2 DCTK3 DCTK4 DCTSize DCTSize2 DitherMasks FIXn0n298631336 FIXn0n34414 FIXn0n390180644 FIXn0n541196100 FIXn0n71414 FIXn0n765366865 FIXn0n899976223 FIXn1n175875602 FIXn1n40200 FIXn1n501321110 FIXn1n77200 FIXn1n847759065 FIXn1n961570560 FIXn2n053119869 FIXn2n562915447 FIXn3n072711026 FloatSampleOffset HuffmanTableSize JFIFMarkerParser JPEGNaturalOrder MaxSample Pass1Bits Pass1Div Pass2Div QTableScaleFactor QuantizationTableSize SampleOffset'
	poolDictionaries: ''
	category: 'Graphics-Files'!

!JPEGReadWriter commentStamp: '<historical>' prior: 0!
I am a subclass of ImageReadWriter that understands JFIF file streams, and can decode JPEG images.
This code is based upon the Independent Joint Photographic Experts Group (IJPEG) software, originally written in C by Tom Lane, Philip Gladstone, Luis Ortiz, Jim Boucher, Lee Crocker, Julian Minguillon, George Phillips, Davide Rossi, Ge' Weijers, and other members of the Independent JPEG Group.

!