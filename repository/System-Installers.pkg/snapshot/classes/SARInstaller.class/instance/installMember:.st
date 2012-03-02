
!SARInstaller methodsFor: 'client services'!
installMember: memberOrName
	| memberName extension isGraphic stream member |
	member := self memberNamed: memberOrName.
	member ifNil: [ ^false ].
	memberName := member fileName.
	extension := (FileDirectory extensionFor: memberName) asLowercase.
	extension caseOf: {
		['st'] -> [ self fileInPackageNamed: memberName ].
		['cs'] -> [  self fileInMemberNamed: memberName  ].
		[ 'mc' ] -> [ self fileInMonticelloPackageNamed: memberName ].
		[ 'mcv' ] -> [ self fileInMonticelloVersionNamed: memberName ].
		[ 'mcz' ] -> [ self fileInMonticelloZipVersionNamed: memberName ].
		[ 'morph' ] -> [ self fileInMorphsNamed: member addToWorld: true ].
		[ 'ttf' ] -> [ self fileInTrueTypeFontNamed: memberName ].
		[ 'translation' ] -> [  self fileInMemberNamed: memberName  ].
	} otherwise: [
		('t*xt' match: extension) ifTrue: [ self openTextFile: memberName ]
			ifFalse: [ stream := member contentStream.
		isGraphic := ImageReadWriter understandsImageFormat: stream.
		stream reset.
		isGraphic
			ifTrue: [ self openGraphicsFile: member ]
			ifFalse: [ "now what?" ^false ]]
	].
	^true
! !
