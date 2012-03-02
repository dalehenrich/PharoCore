
!ScriptLoader methodsFor: 'pharo - updates'!
update14274
	"self new update14274"
	self withUpdateLog: '-  Issue 4783:	Shadow and Corner related fixes.
	http://code.google.com/p/pharo/issues/detail?id=4783
	
- Issue 4875:	Polymorph WindowActiveDropShadow for ShadowStyle: #diffuse does not display correctly for left and right bottom corner, when corners are rounded.
	http://code.google.com/p/pharo/issues/detail?id=4875'.
	self loadTogether: self script537 merge: false.
	self flushCaches.
! !
