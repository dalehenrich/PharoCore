
!ProtocolBrowser methodsFor: 'private'!
onSubProtocolOf: aClass 
	"Initialize with the entire protocol for the class, aClass,
		but excluding those inherited from Object."
	| selectors |
	selectors := Set new.
	aClass withAllSuperclasses do:
		[:each | (each == Object or: [each == ProtoObject]) 
			ifFalse: [selectors addAll: each selectors]].
	self initListFrom: selectors asSortedCollection
		highlighting: aClass! !
