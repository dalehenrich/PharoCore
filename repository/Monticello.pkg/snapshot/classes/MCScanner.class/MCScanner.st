
Object subclass: #MCScanner
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Chunk Format'!

!MCScanner commentStamp: 'LaurentLaffont 3/31/2011 21:08' prior: 0!
I scan / tokenize metadata  (package name, version info, ancestry, dependencies, ...) found in .mcz files.

For example, try:

MCScanner scan:  '(name ''MyPackage-ll.6'' message ''Fix bug xxx'' id ''b21dbd73-f1c3-2746-a3cc-92f1d4edea28'')' readStream!
