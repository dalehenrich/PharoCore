
!ScriptLoader methodsFor: 'load primitives'!
loadTogether: aCollection merge: aBoolean silently: anotherBoolean
	anotherBoolean
		ifTrue: [ 
			[ self loadTogether: aCollection merge: aBoolean ]
				on: ProgressInitiationException do: [:e | e sendNotificationsTo: [ :min :max :curr ] ] ]
		ifFalse: [
			 self loadTogether: aCollection merge: aBoolean ]! !
