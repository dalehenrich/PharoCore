
!SAMethodAnnouncementTest methodsFor: 'tests'!
testRemovedMethod
	"self debug: #testRemovedMethod"
	"test that when a method is removed from a class, SystemMethodRemovedAnnouncement is correctly emitted"
	| count protocol selector class | 
	[
		count := 0.
		Object subclass: #XXXX.
		(Smalltalk at: #XXXX) compile: 'm ^ 1' classified: 'protocol'.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodRemoved do: [ :ann | 
			count := count + 1.
			protocol := ann  itemProtocol.
			selector := ann itemSelector.
			class := ann itemClass ].
		"we remove the method and check that the announcement has been correctly caught"
		(Smalltalk at: #XXXX) removeSelector: #m.
		self assert: count = 1.
		self assert: protocol = 'protocol'.
		self assert: selector = #m.
		self assert: class = (Smalltalk globals at: #XXXX).
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		(Smalltalk globals at: #XXXX) theNonMetaClass removeFromSystem ]! !
