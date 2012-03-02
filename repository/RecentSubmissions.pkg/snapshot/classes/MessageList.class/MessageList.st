
Object subclass: #MessageList
	instanceVariableNames: 'methodReferenceList versionsHistoryList useAsASet lastEntry sortingSelector environment dictionary sortedMethodReferencesList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RecentSubmissions-Core'!

!MessageList commentStamp: 'BenjaminVanRyseghem 11/29/2010 11:31' prior: 0!
MessageList is a simple object that holds a set of ordered method definitions.
See MessageList example for an example.

MessageList example

Instance Variables:
	methodReferenceList	<Collection>!
