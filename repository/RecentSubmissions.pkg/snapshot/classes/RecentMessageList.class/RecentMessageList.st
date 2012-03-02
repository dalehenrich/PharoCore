
MessageList subclass: #RecentMessageList
	instanceVariableNames: 'maxListSize'
	classVariableNames: 'UniqueInstance'
	poolDictionaries: ''
	category: 'RecentSubmissions-Core'!

RecentMessageList class
	instanceVariableNames: 'settingDropList'!

!RecentMessageList commentStamp: '<historical>' prior: 0!
RecentMessageList record and store all the changes and can show them by doing RecentMessageList openInWorld.!
