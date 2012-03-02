
Object subclass: #StartupLoader
	instanceVariableNames: 'errors actions'
	classVariableNames: 'AllowStartupScript UniqueInstance'
	poolDictionaries: ''
	category: 'StartupPreferences'!

!StartupLoader commentStamp: '<historical>' prior: 0!
I am in charge of the loading of the startup scripts from ~/.config/pharo/#{version}/startup.st or ~/.config/pharo/general/pharo#{version}.st

StartupLoader example

will define a script sample startup.st in your unix root on unix 

Its contents is 

StartupLoader default executeAtomicItems: {
	StartupAtomicItem name: 'Open Help' code: 'Workspace openContents: ''Here is just an example of how to use the StartupLoader.
I should only be displayed once.
	
You can also see StartupLoader class>>#example'' label: ''Help''' isSingleton: true.
	StartupAtomicItem name: 'Open Workspace' code: 'Workspace openContents: ''I should be displayed each time'''.
}

For a more complete example, see StartupLoader class>>#example2!
