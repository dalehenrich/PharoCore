
!SystemChangeNotifier methodsFor: 'system triggers'!
selector: selector recategorizedFrom: oldCategory to: newCategory inClass: aClass

	self trigger: (RecategorizedEvent 
				method: (aClass compiledMethodAt: selector ifAbsent: [nil])
				selector: selector
				protocol: newCategory
				class: aClass
				oldProtocol: oldCategory)! !
