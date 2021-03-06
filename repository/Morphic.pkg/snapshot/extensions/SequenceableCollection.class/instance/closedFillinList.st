
!SequenceableCollection methodsFor: '*Morphic-Basic'!
closedFillinList
	"Answers a list of ranges between which values are undertermined.
	Reciever is a list that combines known values and nil entries for
	undetermined values.
	Answer a list of ranges. Each range starts and ends with a known
	value. 
	The range inbetween the known values are nil. The ranges start and
	ends may overlap. 
	Each nil element in the list appears in exactly one range. 
	If the list starts or ends with nil the last range will wrap around to the
	next known value. There may be only one known value in the list but
	there must be atleast one know value.
	
	(self allsatisfy: [ :e | e isNil ] ) ifTrue: [ self error: 'list must contain at
	least one known value' ] 
	"
	| changes n |
	changes := self nilTransitions .
	changes isEmpty ifTrue: [ ^ { 0 to: self size } "Special case. All unknowns." ] .
	 
	changes = #(1) ifTrue: [ ^ #() "Special case. no unknowns." ] . 
	changes = { n :=  self size } ifTrue: [ ^ { n to: n + n } ] .
	"Special case. Only last element known."
	
	changes size even
		 ifTrue: [changes add: self size + (changes at: 1)]
		ifFalse: [ changes first = 1 
					ifFalse: [ changes add: self size + 1;
								add: self size + changes first ]].
	^ changes allButFirst pairsCollect: [ :s :e | ( s - 1 to: e ) ] .

	! !
