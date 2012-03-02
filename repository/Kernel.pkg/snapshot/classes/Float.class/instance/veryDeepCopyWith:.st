
!Float methodsFor: 'copying'!
veryDeepCopyWith: deepCopier
	"Return self.  Do not record me."

	^ self shallowCopy! !
