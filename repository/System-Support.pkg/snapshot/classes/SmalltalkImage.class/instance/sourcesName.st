
!SmalltalkImage methodsFor: 'image, changes names'!
sourcesName
	"Answer the full path to the version-stable source code"
	^ self vmPath , SourceFileVersionString , FileDirectory dot , 'sources'! !
