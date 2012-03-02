
!ScriptLoader methodsFor: 'load primitives'!
loadOneAfterTheOther: aCollection merge: aBoolean silently: anotherBoolean
	anotherBoolean
		ifTrue: [ 
			[ self loadOneAfterTheOther: aCollection merge: aBoolean ]
				on: ProgressInitiationException do: [:e | e sendNotificationsTo: [ :min :max :curr ] ] ]
		ifFalse: [
			self loadOneAfterTheOther: aCollection merge: aBoolean ]! !
