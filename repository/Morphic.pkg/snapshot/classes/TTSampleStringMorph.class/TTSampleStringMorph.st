
TTSampleFontMorph subclass: #TTSampleStringMorph
	instanceVariableNames: 'string ttBounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-TrueType'!

!TTSampleStringMorph commentStamp: 'VeronicaUquillas 6/11/2010 13:40' prior: 0!
I allow the display of a string in a TrueType font as a stand-alone morph.

Morph's color changes the inside of the characters.
Morph's borderColor changes the outline.

Many free fonts are stored at www.FontGuy.com.  
Use a normal web browser (not our Scamper) and go there.  
Choose 'categories' and browse to a font you like.  
Hold the mouse down on the example text in that font.  
When the menu comes up, choose "Copy this link location".  
Come back into Pharo, choose "load font from web..."
from my menu, and paste in the url.!
