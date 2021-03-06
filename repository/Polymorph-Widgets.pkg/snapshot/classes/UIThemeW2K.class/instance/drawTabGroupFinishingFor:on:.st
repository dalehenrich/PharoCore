
!UIThemeW2K methodsFor: 'tabs'!
drawTabGroupFinishingFor: aTabGroupMorph on: aCanvas
	"Patch up any visuals for the selected tab."
	
 	| aSTB aCover myOrigin sOrigin sExtent aContentMorph aBW| 
	
	(aTabGroupMorph selectedTab isNil or: [aTabGroupMorph selectedTab owner isNil]) ifTrue: [^self].
	aSTB := aTabGroupMorph selectedTab bounds.
	aContentMorph := aTabGroupMorph contentMorph.
	aBW := aContentMorph borderWidth.
	myOrigin := aContentMorph bounds origin.
	sOrigin := aSTB bottomLeft.
	sExtent := aSTB bottomRight.
	
	aCover := Rectangle origin: (((sOrigin x) + aBW)@ myOrigin y) corner: (sExtent x @ ((myOrigin y) + (aBW))). 

	aCanvas fillRectangle: aCover color: self backgroundColor
	
! !
