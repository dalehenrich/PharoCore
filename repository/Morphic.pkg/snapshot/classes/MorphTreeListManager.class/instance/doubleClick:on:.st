
!MorphTreeListManager methodsFor: 'mouse managing'!
doubleClick: anEvent on: aMorph
	doubleClickBlock ifNil: [^false].
	doubleClickBlock value.
	^ true! !
