
!Trait methodsFor: 'initialization'!
obsolete
	self name: ('AnObsolete' , self name) asSymbol.
	self hasClassTrait ifTrue: [
		self classTrait obsolete].
	super obsolete! !
