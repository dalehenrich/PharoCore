
!OrderedCollection methodsFor: 'accessing'!
at: anInteger put: anObject 
	"Put anObject at element index anInteger. at:put: cannot be used to
	append, front or back, to an ordered collection; it is used by a
	knowledgeable client to replace an element."
	self ensureBoundsFrom: anInteger to: anInteger.
	^array at: anInteger + firstIndex - 1 put: anObject! !
