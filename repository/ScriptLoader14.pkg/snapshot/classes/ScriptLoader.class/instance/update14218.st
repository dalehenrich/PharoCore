
!ScriptLoader methodsFor: 'pharo - updates'!
update14218
	"self new update14218"
	self withUpdateLog: '-  Issue 4952:	Browse senders from a flat message list leads to MessageNotUnderstood. Thanks Nicolas Cellier for whining endlessly :) 
	Tools should always work :). Thanks for Benjamin van Ryseghem for the good fix and spirit.
	http://code.google.com/p/pharo/issues/detail?id=4952
	
- Fix openComparision... -> openComparison....
'.
	self loadTogether: self script481 merge: false.
	self flushCaches.
! !
