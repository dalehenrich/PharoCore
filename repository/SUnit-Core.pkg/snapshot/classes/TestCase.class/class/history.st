
!TestCase class methodsFor: 'history'!
history
	^ history ifNil: [ history := self newTestDictionary ]! !
