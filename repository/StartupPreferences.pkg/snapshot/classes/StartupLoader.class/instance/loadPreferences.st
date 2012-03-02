
!StartupLoader methodsFor: 'startup loading'!
loadPreferences

	self retreiveFilesStream do: [:file | file fileIn ].! !
