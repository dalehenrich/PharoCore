
!TextEditor methodsFor: 'menu messages'!
changeEmphasis

	|  reply code align menuList startIndex attribute choices |
	choices := self emphasisChoices.
	startIndex := self startIndex.
	align := self text alignmentAt: startIndex ifAbsent: [ 0 ].
	code := self text emphasisAt: startIndex.
	menuList := WriteStream on: Array new.
	menuList nextPut: (code isZero ifTrue:['<on>'] ifFalse: ['<off>']), 'normal' translated.
	menuList nextPutAll: (choices  collect: [:emph|
		(code anyMask: (TextEmphasis perform: emph) emphasisCode)
			ifTrue: [ '<on>', emph asString translated ]
			ifFalse: [ '<off>', emph asString translated ]]).
	((self text attributesAt: startIndex)
		anySatisfy: [ :attr | attr isKern and: [attr kern < 0 ]]) 
			ifTrue: [ menuList nextPut:'<on>', 'narrow' translated ]
			ifFalse: [ menuList nextPut:'<off>', 'narrow' translated ].
	reply := UIManager default chooseFrom:  choices values: choices.
	reply notNil 
		ifTrue: [ attribute := TextEmphasis perform: reply.
				self applyAttribute:  attribute].
	^ true! !
