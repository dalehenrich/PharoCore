
!ScriptLoader methodsFor: 'mc related utils'!
savePackage: aWorkingCopy in: aRepository with: aMessageString
	" | sc |
	  sc := self new.
	  sc savePackage: (self new workingCopyFromPackageName: 'ScriptLoader11') 
		in: MCCacheRepository default
		with: 'this is test to automate dirty package saving in cache'"

	aRepository storeVersion: (aWorkingCopy 
		newVersionWithName: aWorkingCopy uniqueVersionName
		message: aMessageString)! !
