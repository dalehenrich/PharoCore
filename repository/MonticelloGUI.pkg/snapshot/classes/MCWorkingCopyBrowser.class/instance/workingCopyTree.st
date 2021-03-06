
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopyTree
	|workingCopies|
	workingCopies := self workingCopies.
	
	"filter the working copy list if there is a serach string"
	workingCopyPattern ifNotNil: [ 
		workingCopies := workingCopies select: [ :each| workingCopyPattern search: each package name]].
			
	^ workingCopies collect: [:each| MCDependentsWrapper with: each model: self].! !
