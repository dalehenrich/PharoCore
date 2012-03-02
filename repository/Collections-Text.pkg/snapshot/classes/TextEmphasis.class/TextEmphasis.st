
TextAttribute subclass: #TextEmphasis
	instanceVariableNames: 'emphasisCode setMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Text'!

!TextEmphasis commentStamp: '<historical>' prior: 0!
A TextEmphasis, encodes a characteristic applicable to all fonts.  The encoding is as follows:
	1	bold
	2	itallic
	4	underlined
	8	narrow
	16	struck out!
