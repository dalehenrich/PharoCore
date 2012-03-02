
!SystemProgressMorph methodsFor: 'labelling'!
nextSlotFor: shortDescription
	
	lock critical: [ | label bar slots |
		slots := bars size.
		activeSlots = slots ifTrue: [^0].
		activeSlots := activeSlots + 1.
		1 to: slots do: [:index |
			bar := (bars at: index).
			bar ifNil: [
				bar := SystemProgressBarMorph new.
				bar extent: BarWidth@BarHeight + (2 * bar borderWidth).
				bars at: index put: bar.
				label := labels at: index put: (StringMorph contents: shortDescription font: font).
				self
					addMorphBack: label;
					addMorphBack: bar.
				^index].
			bar owner ifNil: [
				bar := bars at: index.
				label := labels at: index.
				self
					addMorphBack: (label contents: shortDescription);
					addMorphBack: (bar barSize: 0).
				^index]]]
		! !
