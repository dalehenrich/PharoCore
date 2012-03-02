
!SAMethodAnnouncementTest methodsFor: 'tests'!
testRecategorizedMethod
	"self debug: #testRecategorizedMethod"
	"test that when we RE-categorized a method from a class under a new protocol, SystemMethodRecategorizedAnnouncement is correctly emitted. If the method is classify under its current protocol, the announcement will not be emitted"
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
		methodClass organization classify: #m under: 'new protocol'.
		self assert: count = 1.
		self assert: newProtocol = 'new protocol' asSymbol.
		self assert: oldProtocol = 'protocol' asSymbol.
		self assert: selector = #m.
		self assert: class = (Smalltalk globals at: #XXXX).
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		(Smalltalk at: #XXXX) theNonMetaClass removeFromSystem ]! !
