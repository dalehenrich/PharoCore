
!ScriptLoader methodsFor: '*deprecated14'!
removeDejaVuFonts
	"Note, you need to close all windows to make the Deja Vu fonts being GCed"
	"Now that DejaVu is the only font: don't remove it!!"

	true ifTrue: [^self].

	StandardFonts setDefaultFonts: #(
		(defaultFont: 'Accuny' 10)
		(codeFont: 'Accuny' 10)
		(listFont: 'Accuny' 10)
		(menuFont: 'Accuny' 10)
		(windowTitleFont: 'Accuny' 10)
		(balloonFont: 'Accuny' 10)
		(buttonFont: 'Accuny' 10)).
	TextSharedInformation removeKey: 'Bitmap DejaVu Sans'! !
