
!CompiledMethodTrailer methodsFor: 'testing'!
hasSourcePointer
	^  kind == #SourcePointer or: [ kind == #VarLengthSourcePointer ] ! !
