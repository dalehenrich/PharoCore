
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
repositoryList
	|repositories|
	repositories := self repositories.
	
	"filter the repository list if there is a serach string"
	repositoryPattern ifNotNil: [
		repositories := repositories select: [ :each| repositoryPattern search: each description]].
	
	^ repositories collect: [:ea | ea description]! !
