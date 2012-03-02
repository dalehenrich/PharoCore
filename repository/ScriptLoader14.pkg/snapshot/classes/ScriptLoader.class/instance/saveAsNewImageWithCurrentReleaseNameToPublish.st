
!ScriptLoader methodsFor: 'private'!
saveAsNewImageWithCurrentReleaseNameToPublish
	"If the reload failed and you do not want to lose time reload all the cs and packages... you can now restart from the image saved now"
	
	|name|
	name := FileDirectory default
				nextNameFor: (self shortImageName, '-releasePharoToPublish')
				extension: FileDirectory imageSuffix.
	name isEmptyOrNil ifFalse: [SmalltalkImage current saveAs: name].! !
