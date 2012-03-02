
!UITheme methodsFor: 'fill-styles'!
desktopImageFor: aWorld
	"Answer the desktop image for the given world.
	Look for an image file with the name of the theme.
	Answer nil for none available."

	|filename|
	filename := FileDirectory fileName: self class themeName extension: 'jpg'.
	^(FileDirectory default fileExists:	filename) ifTrue: [
		ImageReadWriter formFromFileNamed: filename]! !
