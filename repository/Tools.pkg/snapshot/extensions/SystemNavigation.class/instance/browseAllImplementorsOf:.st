
!SystemNavigation methodsFor: '*Tools-Browser'!
browseAllImplementorsOf: selector 
	"Create and schedule a message browser on each method that implements 
	the message whose selector is the argument, selector. For example,  
	Smalltalk browseAllImplementorsOf: #at:put:."

	^self browseImplementorsOf: selector name: 'Implementors of ' , selector autoSelect: selector! !
