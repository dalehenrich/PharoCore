
!Debugger methodsFor: 'context stack menu'!
contextStackMenu: aMenu shifted: shifted 
	"Set up the menu appropriately for the context-stack-list, either shifted
	or unshifted as per the parameter provided"
	^ shifted
		ifTrue: [aMenu
				labels: 'Browse class hierarchy
Browse class
Browse method (O)
Implementors of sent messages
Change sets with this method
Inspect instances
Inspect subinstances
Revert to previous version
Remove from current change set
Revert & remove from changes
More...'
				lines: #(5 7 10 )
				selections: #(#classHierarchy #browseClass #openSingleMessageBrowser #browseAllMessages #findMethodInChangeSets #inspectInstances #inspectSubInstances #revertToPreviousVersion #removeFromCurrentChanges #revertAndForget #unshiftedYellowButtonActivity )]
		ifFalse: [self selectedContext selector = #doesNotUnderstand:
				ifTrue: [aMenu
						add: 'Implement in...'
						subMenu: (self
								populateImplementInMenu: (UIManager default newMenuIn: self for: self))
						target: nil
						selector: nil
						argumentList: #(nil )].
			aMenu
				labels: 'FullStack (f)
Restart (r)
Proceed (p)
Step (t)
Step through (T)
Send (e)
Where (w)
Peel to first like this
Return entered value
Toggle break on entry
Senders of... (n)
Implementors of... (m)
Inheritance (i)
Versions (v)
Inst var refs...
Inst var defs...
Class var refs...
Class variables
Class refs (N)
Browse full (b)
File out 
Copy to clipboard
More...'
				lines: #(8 9 13 15 18 21 )
				selections: #(#fullStack #restart #proceed #doStep #stepIntoBlock #send #where #peelToFirst #returnValue #toggleBreakOnEntry #browseSendersOfMessages #browseMessages #methodHierarchy #browseVersions #browseInstVarRefs #browseInstVarDefs #browseClassVarRefs #browseClassVariables #browseClassRefs #browseMethodFull #fileOutMessage #copyToClipboard #shiftedYellowButtonActivity )]! !
