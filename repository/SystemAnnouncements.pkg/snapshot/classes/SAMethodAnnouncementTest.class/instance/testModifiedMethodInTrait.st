
!SAMethodAnnouncementTest methodsFor: 'tests'!
testModifiedMethodInTrait
	"self debug: #testModifiedMethodInTrait"
	"test that when we re-compile an existing method in a trrait, the SystemMethodModifiedAnnouncement is correctly emited. If the method does not yet exist in the trait, the event will not be emited "
	| count newProtocol oldProtocol selector methodTrait class | 
	[
		count := 0.
		methodTrait := Trait named: 'XXXXX' asSymbol.
		methodTrait compile: 'm ^ 1' classified: 'protocol'.
		"here we set the action to execute when the announcement is emited"
		self announcer when: MethodModified do: [ :ann |
			count := count + 1. 
			newProtocol := ann itemNewProtocol.
			oldProtocol := ann itemOldProtocol. 
			selector := ann itemSelector.
			class := ann itemClass
			].
		methodTrait compile: 'm ^ 2' classified: 'new-protocol'.
		self assert: count = 1.
		self assert: oldProtocol = 'protocol'.
		self assert: newProtocol = 'new-protocol'.
		self assert: selector = #m.
		self assert: class = methodTrait.
	] ensure: [
		"we clean"
		self announcer unsubscribe: self.
		methodTrait theNonMetaClass removeFromSystem ]! !
