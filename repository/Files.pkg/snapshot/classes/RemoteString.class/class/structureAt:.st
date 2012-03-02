
!RemoteString class methodsFor: 'as yet unclassified'!
structureAt: styleVersion

	^ TextAttributeStructureVersions at: styleVersion ifAbsent: [nil]! !
