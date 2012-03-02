
!SAProtocolAnnouncementTest methodsFor: 'tests'!
testRenamedProtocol
	"self debug: #testRenamedProtocol"
	"the action of renaming a protocol is handled by the SystemClassReorganizedAnnouncement announcement. Test that this announcement is correctly emitted"
	| renamedCount class | 
	[
		renamedCount := 0.
		self class organization addCategory: 'protocol old name'.
		self announcer when: ClassReorganized do: [ :ann | 
			renamedCount := renamedCount + 1.
			class := ann itemClass ].
		self class organization renameCategory: 'protocol old name' toBe: 'protocol new name'.
		self assert: renamedCount = 1.
		self assert: class = self class.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		self class organization removeCategory: 'protocol old name'.
		self class organization removeCategory: 'protocol new name'
		]! !
