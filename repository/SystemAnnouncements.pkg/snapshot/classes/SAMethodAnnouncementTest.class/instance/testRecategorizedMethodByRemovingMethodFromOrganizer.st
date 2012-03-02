
!SAMethodAnnouncementTest methodsFor: 'tests'!
testRecategorizedMethodByRemovingMethodFromOrganizer
	"self debug: #testRecategorizedMethodByRemovingMethodFromOrganizer"
	"test that when we remove a method from a class or a trait organizer, SystemMethodRecategorizedAnnouncement is correctly emitted. I don't know exactly when this case could happen"
	| count newProtocol selector methodClass class oldProtocol |
	[
		count := 0.
		methodClass := Object subclass: #XXXX.
		methodClass compile: 'm ^ 1' classified: 'protocol'.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodRecategorized do: [ :ann | 
			count := count + 1.
			newProtocol := ann  itemNewProtocol.
			oldProtocol := ann itemOldProtocol.
			selector := ann itemSelector.
			class := ann itemClass ].
		"here we put the method in a new protocol, and check  that the announcement has been correctly caught"
		methodClass organization removeElement: #m.
		self assert: count = 1.
		self assert: newProtocol = nil.
		self assert: oldProtocol = 'protocol' asSymbol.
		self assert: selector = #m.
		self assert: class = (Smalltalk at: #XXXX).
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		(Smalltalk globals at: #XXXX) theNonMetaClass removeFromSystem ]! !
