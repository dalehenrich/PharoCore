
Object subclass: #SystemNavigation
	instanceVariableNames: 'browserClass hierarchyBrowserClass environment'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'System-Support'!

!SystemNavigation commentStamp: 'LucFabresse 10/10/2010 19:54' prior: 0!
I support the navigation of the system. 
I act as a facade but as I could require some state or different way of navigating the system all my behavior are on the instance side.
I should (it is not complety done yet) be parametrized by an environment (aSystemDictionary) that scopes my queries.!
