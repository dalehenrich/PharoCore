
!PluggableButtonMorph methodsFor: '*Polymorph-Widgets'!
changed
	"Update the fillStyle here."

	|lc pc bs|
	self assureExtension.
	self borderWidth > 0 ifTrue: [
		extension borderStyle: (bs := self borderStyleToUse).
		borderColor := bs style.
		borderWidth := bs width].
	extension fillStyle: self fillStyleToUse.
	self layoutInset: (self theme buttonLabelInsetFor: self).
	color := self fillStyle asColor.
	(self labelMorph respondsTo: #enabled:)
		ifTrue: [self labelMorph enabled: self enabled].
	(self labelMorph respondsTo: #interactionState:)
		ifTrue: [self labelMorph interactionState: self interactionState]
		ifFalse: [(self labelMorph isNil
			or: [label isMorph]) ifFalse: [
				pc := self normalColor.
				lc := self enabled
					ifTrue: [pc contrastingColor]
					ifFalse: [pc contrastingColor muchDarker].
				self labelMorph color: lc]].
	super changed! !
