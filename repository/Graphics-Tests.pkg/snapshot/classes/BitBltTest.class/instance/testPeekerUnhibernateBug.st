
!BitBltTest methodsFor: 'bugs'!
testPeekerUnhibernateBug
	"self run: #testPeekerUnhibernateBug"

	| bitBlt |
	bitBlt := BitBlt bitPeekerFromForm: Display.
	bitBlt destForm hibernate.
	self shouldnt:[bitBlt pixelAt: 1@1] raise: Error.! !
