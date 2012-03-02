
!AbstractUserInput class methodsFor: 'tracing'!
dumpRegistrations
	"Dump all the registered items in a string"
	
	| ret |
	ret := WriteStream on: String new. 
	ret 
		nextPutAll: '---  Items registered by '		;
		nextPutAll: self 	asString				;
		nextPutAll: String crlf 					;
		nextPutAll: '--' 							;
		nextPutAll: String crlf.
	
	registrations associationsDo: [ :assoc | 
		ret nextPutAll: '- Name: ' 				;
		nextPutAll: assoc key 					;
		nextPutAll: ' ==> Action: '				;
		nextPutAll: assoc value value asString	;
		nextPutAll: ' conditioned by: '			;
		nextPutAll: assoc value key asString 	;
		nextPutAll: String crlf
	].
	ret nextPutAll: String crlf; close.
	^ ret contents 
	! !
