
!SmalltalkImageTest methodsFor: 'testing'!
testImageName
	"Non regression test for http://bugs.squeak.org/view.php?id=7351"
	| shortImgName fullImgName fullChgName |
	shortImgName := 'Squeak3.10.2-7179-basic'.
	fullImgName := Smalltalk fullNameForImageNamed: shortImgName.
	fullChgName := Smalltalk fullNameForChangesNamed: shortImgName.
	FileDirectory splitName: fullImgName to: [:path :name |
		self assert: path = Smalltalk imagePath.
		self assert: name = 'Squeak3.10.2-7179-basic.image'.].
	FileDirectory splitName: fullChgName to: [:path :name |
		self assert: path = Smalltalk imagePath.
		self assert: name = 'Squeak3.10.2-7179-basic.changes'.].! !
