
!Gofer class methodsFor: 'private'!
upgrade
	"Update Gofer to the latest version using itself."
	
	| working |
	[ self gofer load ]
		on: Error
		do: [ :err | err retry ].
	self new unload
		unregister: (MCWorkingCopy 
			forPackage: (MCPackage named: 'Gofer')).
	self gofer recompile; cleanup! !
