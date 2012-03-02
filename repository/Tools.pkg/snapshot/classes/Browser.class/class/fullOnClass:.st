
!Browser class methodsFor: 'instance creation'!
fullOnClass: aClass 
	"Open a new full browser set to class."
	| brow |
	brow := self new.
	brow setClass: aClass selector: nil.
	^ self 
		openBrowserView: (brow openEditString: nil)
		label: 'System Browser'! !
