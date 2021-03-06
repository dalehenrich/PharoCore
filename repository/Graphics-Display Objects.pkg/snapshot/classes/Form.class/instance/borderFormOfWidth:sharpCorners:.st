
!Form methodsFor: 'bordering'!
borderFormOfWidth: borderWidth sharpCorners: sharpen
	"Smear this form around and then subtract the original to produce
	an outline.  If sharpen is true, then cause right angles to be outlined
	by right angles (takes an additional diagonal smears ANDed with both
	horizontal and vertical smears)."
	| smearForm bigForm smearPort all cornerForm cornerPort nbrs |
	self depth > 1 ifTrue: [self halt]. "Only meaningful for B/W forms."
	bigForm := self deepCopy.
	all := bigForm boundingBox.
	smearForm := Form extent: self extent.
	smearPort := BitBlt current toForm: smearForm.
	sharpen ifTrue:
		[cornerForm := Form extent: self extent.
		cornerPort := BitBlt current toForm: cornerForm].
	nbrs := (0@0) fourNeighbors.
	1 to: borderWidth do:
		[:i |  "Iterate to get several layers of 'skin'"
		nbrs do:
			[:d |  "Smear the self in 4 directions to grow each layer of skin"
			smearPort copyForm: bigForm to: d rule: Form under].
		sharpen ifTrue:
			["Special treatment to smear sharp corners"
			nbrs with: ((2 to: 5) collect: [:i2 | nbrs atWrap: i2]) do:
				[:d1 :d2 |
				"Copy corner points diagonally"
				cornerPort copyForm: bigForm to: d1+d2 rule: Form over.
				"But only preserve if there were dots on either side"
				cornerPort copyForm: bigForm to: d1+d1+d2 rule: Form and.
				cornerPort copyForm: bigForm to: d1+d2+d2 rule: Form and.
				smearPort copyForm: cornerForm to: 0@0 rule: Form under].
			].
		bigForm copy: all from: 0@0 in: smearForm rule: Form over.
		].
	"Now erase the original shape to obtain the outline"
	bigForm copy: all from: 0@0 in: self rule: Form erase.
	^ bigForm! !
