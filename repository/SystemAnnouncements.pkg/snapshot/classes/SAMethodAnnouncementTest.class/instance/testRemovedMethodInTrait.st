
!SAMethodAnnouncementTest methodsFor: 'tests'!
testRemovedMethodInTrait
	"self debug: #testRemovedMethodInTrait"
	"test that when a method is removed from a trait, SystemMethodRemovedAnnouncement is correctly emitted"
	| count protocol selector class methodTrait | 
	[
		count := 0.
		methodTrait := Trait named: #XXXX.
		methodTrait compile: 'm ^ 1' classified: 'protocol'.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodRemoved do: [ :ann | 
			count := count + 1.
			protocol := ann  itemProtocol.
			selector := ann itemSelector.
			class := ann itemClass ].
		"we remove the method and check that the announcement has been correctly caught"
		methodTrait removeSelector: #m.
		self assert: count = 1.
		self assert: protocol = 'protocol'.
		self assert: selector = #m.
		self assert: class = (Smalltalk globals at: #XXXX).
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		methodTrait removeFromSystem ]! !
