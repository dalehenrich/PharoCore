
!Array methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	| dp |
	"I am about to be written on an object file.  If I am one of two shared global arrays, write a proxy instead."

self == ((Smalltalk at:#TextConstants) DefaultTabsArray) ifTrue: [
	dp := DiskProxy global: #TextConstants selector: #DefaultTabsArray args: {}.
	refStrm replace: self with: dp.
	^ dp].
self == ((Smalltalk at:#TextConstants) DefaultMarginTabsArray) ifTrue: [
	dp := DiskProxy global: #TextConstants selector: #DefaultMarginTabsArray args: {}.
	refStrm replace: self with: dp.
	^ dp].
^ super objectForDataStream: refStrm! !
