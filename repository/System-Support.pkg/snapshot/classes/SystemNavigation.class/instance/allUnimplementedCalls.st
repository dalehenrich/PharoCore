
!SystemNavigation methodsFor: 'query'!
allUnimplementedCalls
	"Answer an Array of each message that is sent by an expression in a  
	method but is not implemented by any object in the system."
	| aStream all |
	all := self allImplementedMessages.
	aStream := (Array new: 50) writeStream.
	self
		allBehaviorsDo: [:cl | cl
				selectorsAndMethodsDo: [:sel :meth |
					| secondStream | 
					secondStream := (String new: 5) writeStream.
					meth messages
						do: [:m | (all includes: m)
								ifFalse: [secondStream nextPutAll: m;
										 space]].
					secondStream position = 0
						ifFalse: [aStream nextPut: cl name , ' ' , sel , ' calls: ' , secondStream contents]]].
	^ aStream contents! !
