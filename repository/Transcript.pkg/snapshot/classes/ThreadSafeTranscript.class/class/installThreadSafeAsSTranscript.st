
!ThreadSafeTranscript class methodsFor: 'declare'!
installThreadSafeAsSTranscript

	Smalltalk globals at: #STranscript put: (self new)
	
	"ThreadSafeTranscript open"! !