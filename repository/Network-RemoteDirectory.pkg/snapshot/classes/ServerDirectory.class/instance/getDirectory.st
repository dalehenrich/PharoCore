
!ServerDirectory methodsFor: 'up/download'!
getDirectory
	"Return a stream with a listing of the current server directory.  (Later -- Use a proxy server if one has been registered.)"
	| listing |
	client := self openFTPClient.
	listing := [ client getDirectory ] ensure: [ self quit ].
	^ listing readStream! !
