
!SmartRefStream methodsFor: 'read write'!
appendClassDefinitions
	"Make this a fileOut format file.  Class name conflicts during reading will be resolved then.  Assume instVarInfo: has already been done."

	byteStream ascii.
	byteStream position = 0 ifTrue: [
	byteStream setFileTypeToObject.
			"Type and Creator not to be text, so can attach correctly to an email msg"
	byteStream header; timeStamp].

	byteStream cr; nextPutAll: '!!ObjectScanner new initialize!!'; cr; cr.
	byteStream trailer.	"Does nothing for normal files.  
		HTML streams will have trouble with object data"

	"Append the object's raw data"
	byteStream cr; cr; nextPutAll: '!!self smartRefStream!!'.
	byteStream binary.		"get ready for objects"
! !
