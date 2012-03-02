
!HostSystemMenus class methodsFor: 'accessing'!
invokeCmd: aCmd with: anEvent
	| app |

	app := self default hostSystemProxy application.
	app ifNil: [^self].
	app perform: aCmd with: anEvent! !
