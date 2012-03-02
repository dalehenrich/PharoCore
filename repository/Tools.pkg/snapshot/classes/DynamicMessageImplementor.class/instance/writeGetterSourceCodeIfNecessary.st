
!DynamicMessageImplementor methodsFor: 'evaluating-private'!
writeGetterSourceCodeIfNecessary

	self isMessageAGetter ifTrue: [ self writeGetterSourceCode ]! !
