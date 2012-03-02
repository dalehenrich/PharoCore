
!ServerDirectory methodsFor: 'file directory'!
fileNames
	"Return a collection of names for the files (but not directories) in this directory."
	"(ServerDirectory serverNamed: 'UIUCArchive') fileNames"

	self isTypeFTP | self isTypeFile ifFalse: [
		^ self error: 'To see a directory, use file:// or ftp://'
	].
	^ (self entries select: [:entry | entry isDirectory not])
		collect: [:entry | entry name]
! !
