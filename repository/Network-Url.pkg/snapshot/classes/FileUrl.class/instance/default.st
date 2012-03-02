
!FileUrl methodsFor: 'downloading'!
default
	"Use the default local Pharo file directory."
	
	| local |
	local := self class pathParts: (FileDirectory default pathParts), #('') isAbsolute: true.
	self privateInitializeFromText: self pathString relativeTo: local.
		"sets absolute also"! !