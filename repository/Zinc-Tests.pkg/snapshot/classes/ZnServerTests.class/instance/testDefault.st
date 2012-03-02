
!ZnServerTests methodsFor: 'testing'!
testDefault
	| server |
	ZnServer stopDefault.
	self assert: ZnServer default isNil.
	server := ZnServer startDefaultOn: 1701.
	self assert: ZnServer default notNil.
	self assert: ZnServer default == server.
	self assert: ZnServer default port = 1701.
	self assert: ZnServer default isRunning.
	self assert: (ZnServer managedServers includes: server).
	ZnServer stopDefault.
	self assert: ZnServer default isNil.
	self deny: server isRunning.
	self deny: (ZnServer managedServers includes: server).
	server := ZnServer startDefaultOn: 1701.
	"Starting the default again is actually a restart"
	ZnServer startDefaultOn: 1701.
	self assert: ZnServer default == server.
	ZnServer stopDefault! !
