
!Archive methodsFor: 'archive operations'!
extractMember: aMemberOrName
	| member |
	member := self member: aMemberOrName.
	member ifNil: [ ^nil ].
	member extractToFileNamed: member localFileName inDirectory: FileDirectory default.! !
