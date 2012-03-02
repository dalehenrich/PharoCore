
!SAProtocolAnnouncementTest methodsFor: 'tests'!
testAddedProtocol
	"self debug: #testAddedProtocol"
	"the action of adding a protocol is handle by the SystemClassReorganizedAnnouncement announcement (and not by SystemProtocolAddedAnnouncement). Test that this annoucment is correctly emitted"
	| addedCount class | 
	[
		addedCount := 0.
		self announcer when: ClassReorganized do: [ :ann | 
			addedCount := addedCount + 1.
			class := ann itemClass ].
		self class organization addCategory: 'protocol - addition'.
		self assert: addedCount = 1.
		self assert: class = self class.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		self class organization removeCategory: 'protocol - addition' ]! !
