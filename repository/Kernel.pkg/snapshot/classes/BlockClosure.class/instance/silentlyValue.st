
!BlockClosure methodsFor: 'evaluating'!
silentlyValue
	"evaluates the receiver but avoiding progress bar notifications to show up."
	
	^[ self value ] 
		on: ProgressInitiationException
		do: [ :ex | 
			ex sendNotificationsTo: [ :min :max :curr |
				self traceCr: min printString,'  ',max printString,'  ',curr printString; cr
			].
		].! !
