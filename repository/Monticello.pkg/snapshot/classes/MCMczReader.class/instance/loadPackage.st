
!MCMczReader methodsFor: 'as yet unclassified'!
loadPackage
	| dict |
	dict := self parseMember: 'package'.
	package := MCPackage named: (dict at: #name)! !
