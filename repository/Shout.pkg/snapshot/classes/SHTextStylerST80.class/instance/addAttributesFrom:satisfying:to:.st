
!SHTextStylerST80 methodsFor: 'converting'!
addAttributesFrom: attributeRuns satisfying: aTestBlock to: aText

	attributeRuns withStartStopAndValueDo: [:start :stop :attribs | 
		attribs 
			select: aTestBlock 
			thenDo: [ :selectedAttribute| 
				aText
					addAttribute: selectedAttribute
					from: start
					to: stop]].
		
	^ aText! !
