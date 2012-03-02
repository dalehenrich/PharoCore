
!ServerDirectory methodsFor: 'file directory'!
createDirectory: localName
	"Create a new sub directory within the current one"

	self isTypeFile ifTrue: [
		^FileDirectory createDirectory: localName
	].

	client := self openFTPClient.
	[client makeDirectory: localName]
		ensure: [self quit].
! !
