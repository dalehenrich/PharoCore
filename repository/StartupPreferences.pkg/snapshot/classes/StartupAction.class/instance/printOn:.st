
!StartupAction methodsFor: 'printing'!
printOn: aStream

	aStream <<'a ' << self class name << '(' << self name << ')'! !
