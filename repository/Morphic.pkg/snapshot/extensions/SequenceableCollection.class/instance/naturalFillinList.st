
!SequenceableCollection methodsFor: '*Morphic-Basic'!
naturalFillinList
	"Return a list of fillin ranges to be used to calculate natural or clamped slopes.
	Note that this list is slightly different in mission from the closedFillinList"
	"Answers a list of ranges between which value are undertermined.
	Reciever is a list that combines known values and nil entries for
	undetermined values.
	Answer a list of ranges. Each range starts and ends with a known value. 
	With the exception of the first and last slopes on the list which may be unknown.
	If no slopes are known then the only range is the whole list.
	If all slopes are known then the fillin list is empty.
	The range inbetween the known values are nil. The ranges start and
	ends may overlap if the slope at the overlap is known.
	Each nil element in the list appears in exactly one range.  
	"
	| changes  |
	changes := self nilTransitions .
	changes isEmpty ifTrue: [ ^ { 1 to: self size } "Special case all unknown." ] .
	 
	changes = #(1) ifTrue: [ ^ #() "Special case. no unknowns." ] . 
	
	changes size even 
			ifTrue: [changes add: self size ].  "Last slope is unknown"
	changes first = 1
			ifTrue: [ ^ changes allButFirst pairsCollect: [ :s :e | (  s - 1 to: e ) ] ].
	"Otherwise first slope is unknown."		
	^ { 1 to: changes first } , (changes allButFirst pairsCollect: [ :s :e | ( ( s - 1) to: e ) ]) 

	! !
