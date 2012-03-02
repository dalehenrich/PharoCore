
!SAMethodAnnouncementTest methodsFor: 'tests'!
testAddedMethod
	"self debug: #testAddedMethod"
	"test that when we add a method to a class, the SystemMethodAddedAnnouncement is correctly emitted"
	| count protocol selector class | 
	[
		count := 0.
		Object subclass: #XXXX.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodAdded do: [ :ann | 
			count := count + 1. 
			protocol := ann  itemProtocol.
			selector := ann itemSelector.
			class := ann itemClass].
		(Smalltalk globals at: #XXXX) compile: 'm ^ 1' classified: 'protocol'.
		self assert: count = 1.
		self assert: protocol = 'protocol'.
		self assert: selector = #m.
		self assert: class = (Smalltalk globals at: #XXXX).
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		(Smalltalk globals at: #XXXX) theNonMetaClass removeFromSystem ]! !
