
!FileContentsBrowser methodsFor: 'other'!
didCodeChangeElsewhere
	"Determine whether the code for the currently selected method and class has been changed somewhere else."

	| aClass |
	(aClass := self selectedClassOrMetaClass) ifNil: [^ false].

	(aClass isKindOf: PseudoClass) ifTrue: [^ false]. "class not installed"
	^super didCodeChangeElsewhere! !
