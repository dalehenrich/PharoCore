
Object subclass: #FilePath
	instanceVariableNames: 'squeakPathName vmPathName converter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Files-Directories'!

!FilePath commentStamp: 'yo 10/19/2004 21:36' prior: 0!
This class absorb the difference of internal and external representation of the file path.  The idea is to keep the internal one as much as possible, and only when it goes to a primitive, the encoded file path, i.e. the native platform representation is passsed to the primitive.

	The converter used is obtained by "LanguageEnvironment defaultFileNameConverter".
!
