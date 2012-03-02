
!SmalltalkImage methodsFor: 'system attribute'!
getSystemAttribute: attributeID
	self
		deprecated:
			'This is a private method of Virtual machine. Use Smalltalk vm <appropriateName> for retreiving attribute(s)'
		on: '17 August 2011'
		in: '1.4'.
	^ self vm getSystemAttribute: attributeID! !
