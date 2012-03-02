
Object subclass: #EncodedCharSet
	instanceVariableNames: ''
	classVariableNames: 'EncodedCharSets'
	poolDictionaries: ''
	category: 'Multilingual-Encodings'!

EncodedCharSet class
	instanceVariableNames: 'compoundTextSequence'!

!EncodedCharSet commentStamp: 'yo 10/19/2004 19:08' prior: 0!
An abstract superclasss of the classes that represent encoded character sets.  In the old implementation, the charsets had more important role.  However, in the current implementation, the subclasses are used only for keeping the backward compatibility.

	The other confusion comes from the name of "Latin1" class.  It used to mean the Latin-1 (ISO-8859-1) character set, but now it primarily means that the "Western European languages that are covered by the characters in Latin-1 character set.
!
