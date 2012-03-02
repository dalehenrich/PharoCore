
!MixedCurveMorph methodsFor: 'access'!
handleColorAt: vertIndex
      "Clamped handles are cyan and unclamped handles are yellow."

	(self clamps at: vertIndex ) ifNil: [ ^ Color yellow ].
	^ Color cyan 
! !
