
!SAMethodAnnouncementTest methodsFor: 'tests'!
testModifiedMethod
	"self debug: #testModifiedMethod"
	"test that when we re-compile an existing method in a class, the SystemMethodModifiedAnnouncement is correctly emited. If the method does not yet exist in the class, the event will not be emited "
	| count newProtocol oldProtocol selector methodClass class | 
	[
		count := 0.
		methodClass := Object subclass: #XXXX.
		methodClass compile: 'm ^ 1' classified: 'protocol'.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodModified do: [ :ann |
			count := count + 1. 
			newProtocol := ann itemNewProtocol.
			oldProtocol := ann itemOldProtocol. 
			selector := ann itemSelector.
			class := ann itemClass
			].
		"here we re-compile the methos and check that the announcement has been well caught"
		methodClass compile: 'm ^ 2' classified: 'new-protocol'.
		self assert: count = 1.
		self assert: oldProtocol = 'protocol'.
		self assert: newProtocol = 'new-protocol'.
		self assert: selector = #m.
		self assert: class = methodClass.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		(Smalltalk globals at: #XXXX) theNonMetaClass removeFromSystem ]! !
