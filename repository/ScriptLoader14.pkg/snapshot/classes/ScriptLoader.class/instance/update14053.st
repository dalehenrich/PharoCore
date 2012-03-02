
!ScriptLoader methodsFor: 'pharo - updates'!
update14053
	"self new update14053"
	self withUpdateLog: '-  Issue 4540:	Removing NullEncoder/FlattenEncoder. Thanks Igor Stasenko.
	
- Issue 4538:	(Array & CompiledMethod)>>hasLiteral: bug. literalEqual for VariableBinding shall use identity. We  make sure that a binding is considered equal when it is identical to another because a binding can have the same key and value but refers to another binding and as such not be equal. Thanks Nicolas Cellier.
	hasLiteral and refersToLiteral now ses literalEqual. Thanks Nicolas Cellier.'.
	self loadTogether: self script318 merge: false.
	self flushCaches.
! !
