
!ZnStaticFileServerDelegate methodsFor: 'private'!
directoryRedirectFor: uri
	| directoryUri |
	directoryUri := uri copy addPathSegment: #/.  
	^ ZnResponse redirect: directoryUri ! !
