
!FileDialogWindow methodsFor: 'as yet unclassified'!
initialDirectories
	"Answer the initial directories."
	
	| dirList |
	dirList := (FileDirectory on: '') directoryNames collect: [ :each |
		FileDirectoryWrapper with: (FileDirectory on: each) name: each model: self].
	dirList isEmpty ifTrue:[
		dirList := Array with: (FileDirectoryWrapper 
			with: FileDirectory default 
			name: FileDirectory default localName 
			model: self)].
	^dirList! !
