
!TextClassLink methodsFor: 'evaluating'!
actOnClick: anEvent for: target in: aParagraph editor: anEditor
	anEditor browseClassFrom: self className.
	^ true! !
