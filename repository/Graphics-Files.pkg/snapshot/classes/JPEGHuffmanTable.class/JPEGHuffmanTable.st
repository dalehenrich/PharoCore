
Object subclass: #JPEGHuffmanTable
	instanceVariableNames: 'bits values mincode maxcode valptr lookaheadBits lookaheadSymbol'
	classVariableNames: 'BitBufferSize Lookahead'
	poolDictionaries: ''
	category: 'Graphics-Files'!

!JPEGHuffmanTable commentStamp: '<historical>' prior: 0!
I represent the table of values used to decode Huffman entropy-encoded bitstreams.  From the JFIF file header entropy values, I build a derived table of codes and values for faster decoding.!
