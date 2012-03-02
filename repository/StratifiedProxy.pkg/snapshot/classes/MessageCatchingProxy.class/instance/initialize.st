
!MessageCatchingProxy methodsFor: 'initialize-release'!
initialize
	" important:
	    - leave methodDict nil 
          - set superclass to be MessageTrap
	"
	
	superclass := MessageTrap.	"remember self is an instance of Behavior"
	methodDict := nil.
	format := Object format.  "my instance don't hold any state "! !
