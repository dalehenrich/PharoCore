
!DemoSettingStyle methodsFor: 'loading'!
load
	| k |
	k := StrikeFont defaultFontKey.
	StandardFonts setFontsFromSpec: {
			{#defaultFont:. k. 24 }. 
			{#codeFont:. k. 24 }.
			{#listFont:. k. 24 }. 
			{#menuFont:. k. 24 }. 
			{#windowTitleFont:. k. 14 }. 
			{#balloonFont:. k. 14 }. 
			{#haloFont:. k.  14}.
			{#buttonFont:. k. 24 } }.
			
	PolymorphSystemSettings desktopColor: (Color r: 0.893 g: 0.97 b: 0.993).
	PolymorphSystemSettings useDesktopGradientFill: true.
	PolymorphSystemSettings desktopGradientFillColor: (Color r: 0.026000000000000002 g: 0.362 b: 0.446).
	PolymorphSystemSettings desktopGradientDirection: #Radial.
	PolymorphSystemSettings desktopGradientOrigin: #topLeft.

	super load.

! !
