
!ObjectExplorer methodsFor: 'menus'!
genericMenu: aMenu 
	"Borrow a menu from my inspector"
	| insideObject menu parentObject |
	currentSelection
		ifNil: [menu := aMenu.
			menu
				add: '*nothing selected*'
				target: self
				selector: #yourself]
		ifNotNil: [insideObject := self object.
			parentObject := self parentObject.
			inspector
				ifNil: [inspector := Smalltalk tools inspector new].
			inspector inspect: parentObject;
				 object: insideObject.
			aMenu defaultTarget: inspector.
			inspector fieldListMenu: aMenu.
			aMenu items
				do: [:i | (#(#inspectSelection #exploreSelection #referencesToSelection #defsOfSelection #objectReferencesToSelection #explorePointers) includes: i selector)
						ifTrue: [i target: self]].
			aMenu addLine;
				add: 'monitor changes'
				target: self
				selector: #monitor:
				argument: currentSelection].
	monitorList isEmptyOrNil
		ifFalse: [aMenu addLine;
				add: 'stop monitoring all'
				target: self
				selector: #stopMonitoring].
	^ aMenu! !
