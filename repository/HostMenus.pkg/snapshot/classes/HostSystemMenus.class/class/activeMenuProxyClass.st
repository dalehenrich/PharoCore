
!HostSystemMenus class methodsFor: 'instance creation'!
activeMenuProxyClass
	"Return the concreteHostMenuProxy subclass for the platform on which we are
currently running."

	HostSystemMenusProxy allSubclasses do: [:class |
		class isActiveHostMenuProxyClass ifTrue: [^ class]].

	"no responding subclass; use HostSystemMenusProxy"
	^ HostSystemMenusProxy
! !
