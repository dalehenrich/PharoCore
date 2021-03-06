
!PasteUpMorph methodsFor: 'world state'!
addMorphs: aMorphOrList 
	"Dump in submorphs, and stepList from aMorphOrList.  Used to bring a world, paste-up, or other morph in from an object file."

	aMorphOrList isMorph 
		ifTrue:  [aMorphOrList isWorldMorph 
					ifFalse:  
						[ aMorphOrList privateOwner: nil.
						self firstHand attachMorph: aMorphOrList.
						self startSteppingSubmorphsOf: aMorphOrList]
					ifTrue: 
						[ aMorphOrList privateOwner: nil.
						self addMorph: aMorphOrList ].
					aMorphOrList privateSubmorphs reverseDo: 
						[:m | 
							m privateOwner: nil.
							self addMorph: m.
							m changed].
				(aMorphOrList instVarNamed: 'stepList') 
							do: [:entry | entry first startSteppingIn: self]]
		ifFalse: 
			["list, add them all"
			aMorphOrList reverseDo: 
					[:m | 
					m privateOwner: nil.
					self addMorph: m.
					self startSteppingSubmorphsOf: m.	"It may not want this!!"
					m changed]]! !
