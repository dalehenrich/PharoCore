
SHTextStyler subclass: #SHTextStylerST80
	instanceVariableNames: 'classOrMetaClass workspace font parser environment pixelHeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Shout-Styling'!

SHTextStylerST80 class
	instanceVariableNames: 'styleTable textAttributesByPixelHeight'!

!SHTextStylerST80 commentStamp: 'StephaneDucasse 11/29/2011 22:28' prior: 0!
I style Smalltalk methods and expressions.

My 'styleTable' class instance var holds an array ofArrays which control how each token is styled/coloured. See my defaultStyleTable class method for its structure.
My styleTable can be changed by either modifying the defaultStyleTable class method and then executing SHTextStylerST80 initialize ; or by giving me a new styleTable through my #styleTable: class method.

My 'textAttributesByPixelSize' class instance var contains a dictionary of dictionaries.
	The key is a pixelSize and the value a Dictionary from token type Symbol to TextAttribute array.
	It is created/maintained automatically.
	
I also install these 3 preferences when my class initialize method is executed....
	#syntaxHighlightingAsYouType  - controls whether methods are styled in browsers
	#syntaxHighlightingAsYouTypeAnsiAssignment - controls whether assignments are formatted to be :=
	#syntaxHighlightingAsYouTypeLeftArrowAssignment - controls whether assignments are formatted to be _

I reimplement #unstyledTextFrom: so that TextActions are preserved in the unstyled text 
	
	
	
	
	 
	
!
