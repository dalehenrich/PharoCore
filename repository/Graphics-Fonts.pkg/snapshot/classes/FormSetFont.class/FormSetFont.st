
StrikeFont subclass: #FormSetFont
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Fonts'!

!FormSetFont commentStamp: '<historical>' prior: 0!
FormSetFonts are designed to capture individual images as character forms for imbedding in normal text.  While most often used to insert an isolated glyph in some text, the code is actually desinged to support an entire user-defined font.  The TextAttribute subclass TextFontReference is specifically designed for such in-line insertion of exceptional fonts in normal text.!
