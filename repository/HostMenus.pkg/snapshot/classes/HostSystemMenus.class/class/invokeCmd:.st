
!HostSystemMenus class methodsFor: 'accessing'!
invokeCmd: aCmd 
	| app |

	app := self default hostSystemProxy application.
	app ifNil: [^self].
	app perform: aCmd ! !
