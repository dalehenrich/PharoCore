
!WorldState methodsFor: 'canvas'!
recordDamagedRect: damageRect

	damageRecorder ifNotNil: [damageRecorder recordInvalidRect: damageRect truncated]
! !
