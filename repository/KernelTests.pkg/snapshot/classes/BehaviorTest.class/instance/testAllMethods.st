
!BehaviorTest methodsFor: 'tests'!
testAllMethods
	| allMethods nonOverridenMethods |
	allMethods := IdentitySet new addAll: Object allMethods; yourself.
	self assert: (allMethods includesAllOf: Object methods).
	
	"We fetch all compiled methods that are not redefined in Object"
	nonOverridenMethods := OrderedCollection new.
	ProtoObject methodDictionary 
		associationsDo: [:assoc | (Object includesSelector: assoc key) 
											ifFalse: [ nonOverridenMethods add: assoc value ] ].
										
	self assert: (allMethods includesAllOf: nonOverridenMethods).! !
