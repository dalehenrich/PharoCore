
!AbstractTool methodsFor: 'method'!
browseVersionsFrom: aMethod
	"Create and schedule a Versions Browser, showing all versions of the 
	currently selected message. Answer the browser or nil."
	
	| selector class | 
	(selector := aMethod selector)
		ifNil: [ self inform: 'Sorry, only actual methods have retrievable versions.'. ^nil ]
		ifNotNil: [
			class := aMethod methodClass.
			(Smalltalk tools versionBrowser
				browseVersionsOf: aMethod
				class: class
				meta: class isMeta
				category: aMethod category
				selector: selector)]! !
