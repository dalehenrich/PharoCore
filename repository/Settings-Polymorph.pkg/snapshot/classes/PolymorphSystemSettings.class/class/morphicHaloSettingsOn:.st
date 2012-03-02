
!PolymorphSystemSettings class methodsFor: 'morphic'!
morphicHaloSettingsOn: aBuilder 
	(aBuilder group: #halo)
		label: 'Halo' translated;
		parent: #morphic;
		description: 'All halo settings' translated;
		noOrdering;
		with: [
			(aBuilder setting: #haloEnclosesFullBounds)
				label: 'Encloses fullbounds' translated;
				target: HaloMorph;
				description: 'If true, halos will enclose the full bounds of the target Morph, rather than just the bounds' translated.
			(aBuilder setting: #showBoundsInHalo)
				label: 'Exhibits bounds' translated;
				target: HaloMorph;
				description: 'If true, halos will include a fine rectangle around the bounds of the target morph.' translated
		]! !
