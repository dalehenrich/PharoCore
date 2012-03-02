
!CompositeTransform methodsFor: 'testing'!
isPureTranslation
	^ globalTransform isPureTranslation and: [localTransform isPureTranslation]! !
