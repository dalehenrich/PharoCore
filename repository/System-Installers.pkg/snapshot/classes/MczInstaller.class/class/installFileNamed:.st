
!MczInstaller class methodsFor: 'installing'!
installFileNamed: aFileName
	self installStream: (FileStream readOnlyFileNamed: aFileName)! !
