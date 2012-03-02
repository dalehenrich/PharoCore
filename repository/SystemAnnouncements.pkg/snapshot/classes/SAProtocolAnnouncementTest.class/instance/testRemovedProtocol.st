
!SAProtocolAnnouncementTest methodsFor: 'tests'!
testRemovedProtocol
	"self debug: #testRemovedProtocol"
	"the action of removing a protocol is handle by the SystemClassReorganizedAnnouncement announcement (and not by SystemProtocolRemovedAnnouncement). Test that this annoucment is correctly emitted"
	| removedCount class | 
	[
		removedCount := 0.
		self class organization addCategory: 'protocol - removal'.
		self announcer when: ClassReorganized do: [ :ann | 
			removedCount := removedCount + 1.
			class := ann itemClass ].
		self class organization removeCategory: 'protocol - removal'.
		self assert: removedCount = 1.
		self assert: class = self class.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		self class organization removeCategory: 'protocol - removal'
		]! !
