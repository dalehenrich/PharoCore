
!Browser methodsFor: 'initialization'!
labelString
	self selectedClass ifNil: [ ^ self defaultBrowserTitle ].
	^ String streamContents: [ :s|
		self selectedClass printOn: s.
		self metaClassIndicated ifTrue: [ s << ' class' ].
		self selectedMessageName ifNotNil: [ :name| s << '>>' << name ]]
! !
