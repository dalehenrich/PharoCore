
!PluggableCanvas methodsFor: 'accessing'!
clipRect
	| innerClipRect |
	self apply: [ :c |
		innerClipRect := c clipRect ].
	^innerClipRect! !
