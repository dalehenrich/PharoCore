
!Color class methodsFor: 'class initialization'!
initializeNames
	"Name some colors."
	"Color initializeNames"
	ColorNames := OrderedCollection new.
	self 
		named: #black
		put: (Color 
				r: 0
				g: 0
				b: 0).
	self 
		named: #veryVeryDarkGray
		put: (Color 
				r: 0.125
				g: 0.125
				b: 0.125).
	self 
		named: #veryDarkGray
		put: (Color 
				r: 0.25
				g: 0.25
				b: 0.25).
	self 
		named: #darkGray
		put: (Color 
				r: 0.375
				g: 0.375
				b: 0.375).
	self 
		named: #gray
		put: (Color 
				r: 0.5
				g: 0.5
				b: 0.5).
	self 
		named: #lightGray
		put: (Color 
				r: 0.625
				g: 0.625
				b: 0.625).
	self 
		named: #veryLightGray
		put: (Color 
				r: 0.75
				g: 0.75
				b: 0.75).
	self 
		named: #veryVeryLightGray
		put: (Color 
				r: 0.875
				g: 0.875
				b: 0.875).
	self 
		named: #white
		put: (Color 
				r: 1.0
				g: 1.0
				b: 1.0).
	self 
		named: #red
		put: (Color 
				r: 1.0
				g: 0
				b: 0).
	self 
		named: #yellow
		put: (Color 
				r: 1.0
				g: 1.0
				b: 0).
	self 
		named: #green
		put: (Color 
				r: 0
				g: 1.0
				b: 0).
	self 
		named: #cyan
		put: (Color 
				r: 0
				g: 1.0
				b: 1.0).
	self 
		named: #blue
		put: (Color 
				r: 0
				g: 0
				b: 1.0).
	self 
		named: #magenta
		put: (Color 
				r: 1.0
				g: 0
				b: 1.0).
	self 
		named: #brown
		put: (Color 
				r: 0.6
				g: 0.2
				b: 0).
	self 
		named: #orange
		put: (Color 
				r: 1.0
				g: 0.6
				b: 0).
	self 
		named: #lightRed
		put: (Color 
				r: 1.0
				g: 0.8
				b: 0.8).
	self 
		named: #lightYellow
		put: (Color 
				r: 1.0
				g: 1.0
				b: 0.8).
	self 
		named: #lightGreen
		put: (Color 
				r: 0.8
				g: 1.0
				b: 0.6).
	self 
		named: #lightCyan
		put: (Color 
				r: 0.4
				g: 1.0
				b: 1.0).
	self 
		named: #lightBlue
		put: (Color 
				r: 0.8
				g: 1.0
				b: 1.0).
	self 
		named: #lightMagenta
		put: (Color 
				r: 1.0
				g: 0.8
				b: 1.0).
	self 
		named: #lightBrown
		put: (Color 
				r: 1.0
				g: 0.6
				b: 0.2).
	self 
		named: #lightOrange
		put: (Color 
				r: 1.0
				g: 0.8
				b: 0.4).
	self 
		named: #transparent
		put: (TranslucentColor new alpha: 0.0)! !
