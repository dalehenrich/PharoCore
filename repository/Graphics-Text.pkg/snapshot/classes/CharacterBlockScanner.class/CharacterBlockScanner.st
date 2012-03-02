
CharacterScanner subclass: #CharacterBlockScanner
	instanceVariableNames: 'characterPoint characterIndex lastCharacter lastCharacterExtent lastSpaceOrTabExtent nextLeftMargin specialWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Text'!

!CharacterBlockScanner commentStamp: '<historical>' prior: 0!
My instances are used to scan text to compute the CharacterBlock for a character specified by its index in the text or its proximity to the cursor location.!
