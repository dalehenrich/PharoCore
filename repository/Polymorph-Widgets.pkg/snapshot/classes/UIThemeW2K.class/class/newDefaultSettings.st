
!UIThemeW2K class methodsFor: 'accessing'!
newDefaultSettings
	"Answer a new original default settings."
	
	|grey|
	grey := Color h: 40.0 s: 0.06  v: 0.83.
	^super newDefaultSettings
		standardColorsOnly: true;
		autoSelectionColor: false;
		buttonColor: grey;
		windowColor: grey;
		scrollbarColor: grey;
		selectionColor: (Color r: 62 g: 142 b: 220 range: 255) ;
		progressBarColor: grey;
		progressBarProgressColor: (Color r: 62 g: 142 b: 220 range: 255);
		yourself! !
