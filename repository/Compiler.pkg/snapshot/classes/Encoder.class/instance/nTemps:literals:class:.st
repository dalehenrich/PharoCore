
!Encoder methodsFor: 'initialize-release'!
nTemps: n literals: lits class: cl 
	"Decompile."

	supered := false.
	class := cl.
	nTemps := n.
	literalStream := (Array new: lits size) writeStream.
	literalStream nextPutAll: lits.
	sourceRanges := Dictionary new: 32.
	globalSourceRanges := OrderedCollection new: 32.
! !
