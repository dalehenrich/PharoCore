
!DynamicMessageImplementor methodsFor: 'evaluating-private'!
writeSetterSourceCodeIfNecessary

	self isMessageASetter ifTrue: [ self writeSetterSourceCode ]! !
