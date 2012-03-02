
!TextEditor methodsFor: 'menu messages'!
changeEmphasisOrAlignment
	| aList reply  code align menuList startIndex attribute |
	startIndex := self startIndex.
	align := self text alignmentAt: startIndex ifAbsent: [ 0 ].
	code := self text emphasisAt: startIndex.
	menuList := WriteStream on: Array new.
	menuList nextPut: (code isZero ifTrue:['<on>'] ifFalse: ['<off>']), 'normal' translated.
	menuList nextPutAll: (#(bold italic underlined struckOut) collect: [:emph|
		(code anyMask: (TextEmphasis perform: emph) emphasisCode)
			ifTrue: [ '<on>', emph asString translated ]
			ifFalse: [ '<off>',emph asString translated ]]).
	((self text attributesAt: startIndex)
		anySatisfy: [ :attr | attr isKern and: [attr kern < 0 ]]) 
			ifTrue: [ menuList nextPut:'<on>', 'narrow' translated ]
			ifFalse: [ menuList nextPut:'<off>', 'narrow' translated ].
	menuList nextPutAll: (self alignmentChoices collectWithIndex: [ :type :i |
		align = (i-1)
			ifTrue: [ '<on>',type asString translated ]
			ifFalse: [ '<off>',type asString translated ]]).
	aList := #(normal bold italic underlined struckOut narrow leftFlush centered rightFlush justified).
	reply := UIManager default chooseFrom:  aList values: aList.
	reply notNil ifTrue: [
		(self alignmentChoices includes: reply)
			ifTrue: [ attribute :=TextAlignment perform: reply]
			ifFalse: [ attribute := TextEmphasis perform: reply].
		self applyAttribute:  attribute].
	^ true! !
