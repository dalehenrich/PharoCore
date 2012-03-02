
!StrikeFontSet class methodsFor: 'filein/out'!
installExternalFontOn: aStream encoding: encoding encodingName: aString textStyleName: styleName

	| array encodingIndex textStyle |

	array := aStream
		untilEndWithFork: [(ReferenceStream on: aStream) next]
		displayingProgress: 'Font reading...'. 
	
	TextSharedInformation at: aString asSymbol put: array.

	textStyle := TextSharedInformation at: styleName asSymbol.
	encodingIndex := encoding + 1.
	textStyle fontArray do: [:fs | | fonts |
		fonts := fs fontArray.
		encodingIndex > fonts size
			ifTrue: [fonts :=  (Array new: encodingIndex)
				replaceFrom: 1 to: fonts size with: fonts startingAt: 1].
		fonts at: encodingIndex put: (self findMaximumLessThan: fs fontArray first in: array).
		fs initializeWithFontArray: fonts.
	].
! !
