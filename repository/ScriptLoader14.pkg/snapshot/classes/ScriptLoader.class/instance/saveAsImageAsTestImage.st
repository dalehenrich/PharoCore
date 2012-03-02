
!ScriptLoader methodsFor: 'private'!
saveAsImageAsTestImage
	"Now you can run tests and see and go back to the previous image
	and do that go and back.... then after you can decide to freeze"

	|name|
	name := FileDirectory default
				nextNameFor: (self shortImageName, '-imageForTestsFor')
				extension: FileDirectory imageSuffix.
	name isEmptyOrNil ifFalse: [SmalltalkImage current saveAs: name].! !
