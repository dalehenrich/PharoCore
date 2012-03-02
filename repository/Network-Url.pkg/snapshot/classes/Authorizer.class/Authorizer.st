
Object subclass: #Authorizer
	instanceVariableNames: 'users realm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Url'!

!Authorizer commentStamp: '<historical>' prior: 0!
The Authorizer does user authorization checking. Each instance of authorizer keeps track of the realm that it is authorizing for, and the table of authorized users. An authorizer can be asked to return the user name/symbol associated with a userID (which concatenates the username and password from the HTTP request) with the user: method.
!
