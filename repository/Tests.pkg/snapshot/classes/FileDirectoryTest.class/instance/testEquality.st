
!FileDirectoryTest methodsFor: 'existence tests'!
testEquality
	"self debug: #testEquality"

	self assert: FileDirectory default = FileDirectory default.
	self deny: FileDirectory default = FileDirectory default containingDirectory.
	self deny: FileDirectory default isNil! !
