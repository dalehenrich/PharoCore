
AbstractFont subclass: #FixedFaceFont
	instanceVariableNames: 'baseFont substitutionCharacter displaySelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Fonts'!

!FixedFaceFont commentStamp: 'tak 12/22/2004 01:45' prior: 0!
I am a font for special purpose like password or fallback.
I can show same form whenever someone requests any character.

Variable displaySelector is future use to show a form dynamically.
(Although it would be unnecessary...)!
