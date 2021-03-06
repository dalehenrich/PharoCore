
!PluggableMenuItemSpec methodsFor: 'initialize'!
analyzeLabel
	"For Morphic compatiblity. Some labels include markup such as <on>, <off> etc.
	Analyze the label for these annotations and take appropriate action."
	label ifNotNil: [
		| marker |
		marker := label copyFrom: 1 to: (label indexOf: $>).
		(marker = '<on>' or:[marker = '<yes>']) ifTrue:[
			checked := true.
			label := label copyFrom: marker size+1 to: label size.
		].
		(marker = '<off>' or:[marker = '<no>']) ifTrue:[
			checked := false.
			label := label copyFrom: marker size+1 to: label size.
		]]
! !
