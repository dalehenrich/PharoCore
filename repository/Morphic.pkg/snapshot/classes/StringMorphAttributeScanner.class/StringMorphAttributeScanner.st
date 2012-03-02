
Object subclass: #StringMorphAttributeScanner
	instanceVariableNames: 'fontNumber textColor emphasis alignment actualFont indent kern'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Text Support'!

!StringMorphAttributeScanner commentStamp: '<historical>' prior: 0!
A StringMorphAttributeScanner provides the interface of a CharacterScanner so that text attributes may be collected from a Text and used elsewhere, like in setting the attributes of a StringMorph.
!
