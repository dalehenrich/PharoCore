
!LogicalFont methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	| dp |
	"I am about to be written on an object file.  Write a reference to a known LogicalFont in the other system instead."

	dp := DiskProxy global: #LogicalFont selector: #familyName:fallbackFamilyNames:pointSize:stretchValue:weightValue:slantValue:
			args: {self familyName. self fallbackFamilyNames. self pointSize. self stretchValue. self weightValue. self slantValue}.
	refStrm replace: self with: dp.
	^ dp.
! !
