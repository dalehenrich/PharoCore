
!HostSystemMenusMenuItem class methodsFor: 'instance creation'!
activeMenuItemClass
	"Return the HostSystemMenusMenuItem subclass for the platform on which we are
currently running."

	HostSystemMenusMenuItem allSubclasses do: [:class |
		class isActiveHostMenuItemClass ifTrue: [^ class]].

	"no responding subclass; use HostSystemMenusMenuItem"
	^ HostSystemMenusMenuItem

! !
