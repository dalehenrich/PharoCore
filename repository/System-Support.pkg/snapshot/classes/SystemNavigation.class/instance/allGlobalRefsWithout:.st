
!SystemNavigation methodsFor: 'query'!
allGlobalRefsWithout: classesAndMessagesPair
	"Answer a set of symbols that may be refs to Global names. In some  
	sense we should only need the associations, but this will also catch, eg,  
	HTML tag types. This method computes its result in the absence of  
	specified classes and messages."

	"may be a problem if namespaces are introduced as for the moment  
	only Smalltalk is queried. sd 29/4/03"

	| globalRefs absentClasses absentSelectors |
	globalRefs := IdentitySet new: CompiledMethod instanceCount.
	absentClasses := classesAndMessagesPair first.
	absentSelectors := classesAndMessagesPair second.
	self flag: #shouldBeRewrittenUsingSmalltalkAllClassesDo:.	"sd 29/04/03"
	Cursor execute
		showWhile: [ 
			Smalltalk classNames
				do: [ :cName | 
					((absentClasses includes: cName)
						ifTrue: [ {} ]
						ifFalse: [ 
							{(Smalltalk globals at: cName).
							((Smalltalk globals at: cName) class)} ])
						do: [ :cl | 
							(absentSelectors isEmpty
								ifTrue: [ cl selectors ]
								ifFalse: [ cl selectors copyWithoutAll: absentSelectors ])
								do: [ :sel | 
									"Include all capitalized symbols for good 
									measure"
									(cl compiledMethodAt: sel)
										literalsDo: [ :m | 
											(m isSymbol and: [ m size > 0 and: [ m first canBeGlobalVarInitial ] ])
												ifTrue: [ globalRefs add: m ].
											(m isMemberOf: Array)
												ifTrue: [ 
													m
														do: [ :x | 
															(x isSymbol and: [ x size > 0 and: [ x first canBeGlobalVarInitial ] ])
																ifTrue: [ globalRefs add: x ] ] ].
											m isVariableBinding
												ifTrue: [ m key ifNotNil: [ globalRefs add: m key ] ] ] ] ] ] ].
	^ globalRefs! !
