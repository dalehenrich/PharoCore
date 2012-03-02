
!MethodReference class methodsFor: 'instance creation'!
class: aClass selector: aSelector
	"Changed to support inheritance"
	^ self new setStandardClass: aClass methodSymbol: aSelector! !
