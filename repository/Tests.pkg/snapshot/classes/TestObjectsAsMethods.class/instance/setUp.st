
!TestObjectsAsMethods methodsFor: 'running'!
setUp
	SystemChangeNotifier uniqueInstance doSilently: [
		self class addSelector: #add:with: withMethod: ObjectsAsMethodsExample new.
		self class addSelector: #answer42 withMethod: ObjectsAsMethodsExample new.
		self class addSelector: #foo withMethod: AbstractObjectsAsMethod new ]! !
