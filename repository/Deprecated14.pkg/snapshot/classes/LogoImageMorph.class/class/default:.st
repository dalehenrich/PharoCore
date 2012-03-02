
!LogoImageMorph class methodsFor: 'defaultinstance'!
default: newImageMorph
	default ifNotNil: [default delete].
	default := newImageMorph.
	default  ifNotNil: [
		default 
			openInWorld;
			beSticky;
			lock;
			goBehind]! !
