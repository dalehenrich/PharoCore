
!PSMCChangeWrapper methodsFor: 'accessing'!
icon
	"Answer a form with an icon to represent the receiver"
	|o|
	o := self operation.
	o isNil ifTrue: [^self theme smallJumpIcon].
	o isAddition ifTrue: [^self theme smallOkIcon].
	o isRemoval ifTrue: [^self theme smallCancelIcon].
	^self theme smallForwardIcon! !
