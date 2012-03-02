
!Class methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	"I am about to be written on an object file.  Write a reference to a class in Smalltalk instead."

	^ DiskProxy global: self theNonMetaClass name selector: #withClassVersion:
		args: {self classVersion}
	
! !
