
!XTableForUnicodeFont methodsFor: 'as yet unclassified'!
at: index put: value

	self  deprecated: 'dead code?' on: '24 February 2012' in: 'Pharo1.4'.
	ranges with: xTables do: [:range :xTable |
		(range first <= index and: [index <= range last]) ifTrue: [
			^ xTable at: index - range first + 1 put: value]].
	^ 0.
! !
