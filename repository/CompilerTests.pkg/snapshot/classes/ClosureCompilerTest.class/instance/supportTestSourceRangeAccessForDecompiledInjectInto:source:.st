
!ClosureCompilerTest methodsFor: 'tests'!
supportTestSourceRangeAccessForDecompiledInjectInto: method source: source
	"Test debugger source range selection for inject:into:"
	^self
		supportTestSourceRangeAccessForInjectInto: method
		source: source
		selectionSequence: #(	':= t1'
								'do: [:t4 | t3 := t2 value: t3 value: t4]'
								'value: t3 value: t4'
								':= t2 value: t3 value: t4'
								']'
								'value: t3 value: t4'
								':= t2 value: t3 value: t4'
								']'
								'^t3')! !
