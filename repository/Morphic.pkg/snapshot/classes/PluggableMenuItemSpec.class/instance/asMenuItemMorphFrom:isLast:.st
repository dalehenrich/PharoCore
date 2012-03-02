
!PluggableMenuItemSpec methodsFor: '*Morphic-Menus'!
asMenuItemMorphFrom: parentMenu isLast: aBoolean

	| it act lbl menu |
	it := self morphClass new.
	lbl := self label ifNil: [''].
	self hasCheckBox
		ifTrue: [ self checked
 			ifTrue: [lbl := '<on>', lbl]
			ifFalse: [lbl := '<off>', lbl]].
	it contents: lbl.
	it icon: self icon.
	it isEnabled: self enabled.
	(act := self action) ifNotNil:[
		it 
			target: act receiver;
			selector: act selector;
			arguments: act arguments.
	].
	(menu := self subMenu) ifNotNil:[
			self enabled ifTrue: [ it subMenu: (menu asMenuMorph) ]].
		
	parentMenu ifNotNil:[parentMenu addMorphBack: it].
	aBoolean ifFalse: [ self separator ifTrue:[parentMenu addLine]].
	^it! !
