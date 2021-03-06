
!TraitMethodDescriptionTest methodsFor: 'running'!
testCategories
	self assert: (self t4 organization categoryOfElement: #m21) = #cat1.
	self assert: (self t4 organization categoryOfElement: #m22) = #cat2.
	self assert: (self t4 organization categoryOfElement: #m11) = #catX.
	self assert: (self t4 organization categoryOfElement: #m12) = #cat2.
	self assert: (self t4 organization categoryOfElement: #m13) = #cat3.
	self assert: (self t6 organization categoryOfElement: #m22Alias) = #cat2.
	self t2 organization classify: #m22 under: #catX.
	self assert: (self t4 organization categoryOfElement: #m22) = #catX.
	self assert: (self t6 organization categoryOfElement: #m22Alias) = #catX.
	self t6 organization classify: #m22 under: #catY.
	self t6 organization classify: #m22Alias under: #catY.
	self t2 organization classify: #m22 under: #catZ.
	self assert: (self t6 organization categoryOfElement: #m22) = #catY.
	self assert: (self t6 organization categoryOfElement: #m22Alias) = #catY.
	self t1 compile: 'mA' classified: #catA.
	self assert: (self t4 organization categoryOfElement: #mA) = #catA.
	self t1 organization classify: #mA under: #cat1.
	self assert: (self t4 organization categories includes: #catA) not! !
