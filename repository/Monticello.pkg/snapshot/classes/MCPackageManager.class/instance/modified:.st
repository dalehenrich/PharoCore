
!MCPackageManager methodsFor: 'accessing'!
modified: aBoolean
	modified = aBoolean
		ifTrue: [ ^ self ].
	modified := aBoolean.
	self changed: #modified.
	self class changed: (Array with: #modified with: self).
	modified
		ifFalse: [ 
			Smalltalk logChange: '"' , self packageName , '"' ].
	MonticelloAnnouncer announcer announce: (MCPackageModified package: self package)
	! !
