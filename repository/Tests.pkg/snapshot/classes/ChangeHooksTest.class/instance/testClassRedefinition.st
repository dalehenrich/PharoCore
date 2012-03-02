
!ChangeHooksTest methodsFor: 'Testing-Classes'!
testClassRedefinition

	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRedefinitionEvent:.
	self generateTestClass! !
