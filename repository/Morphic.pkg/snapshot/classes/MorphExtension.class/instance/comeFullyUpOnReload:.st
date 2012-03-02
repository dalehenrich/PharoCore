
!MorphExtension methodsFor: 'objects from disk'!
comeFullyUpOnReload: smartRefStream

	locked ifNil: [locked := false].
	visible ifNil: [visible := true].
	sticky ifNil: [sticky := false].
	^ self! !
