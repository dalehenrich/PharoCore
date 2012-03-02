
!ScriptLoader methodsFor: 'private'!
saveAsNewImageWithCurrentReleaseName
	|name|
	name := FileDirectory default
				nextNameFor: ('releasePharo-',  self currentUpdateVersionNumber asString)
				extension: FileDirectory imageSuffix.
	name isEmptyOrNil ifFalse: [SmalltalkImage current saveAs: name].! !
