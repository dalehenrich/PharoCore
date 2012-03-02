
!Metaclass methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	| dp |
	"I am about to be written on an object file.  Write a reference to a class in Smalltalk instead."

	dp := DiskProxy global: self theNonMetaClass name selector: #class
			args: (Array new).
	refStrm replace: self with: dp.
	^ dp
! !
