
Browser subclass: #MessageSet
	instanceVariableNames: 'messageList autoSelectString growable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Browser'!

!MessageSet commentStamp: '<historical>' prior: 0!
I represent a query path of the retrieval result of making a query about methods in the system. The result is a set of methods, denoted by a message selector and the class in which the method was found. As a StringHolder, the string I represent is the source code of the currently selected method. I am typically viewed in a Message Set Browser consisting of a MessageListView and a BrowserCodeView.!
