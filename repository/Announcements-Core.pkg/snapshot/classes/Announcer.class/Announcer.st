
Object subclass: #Announcer
	instanceVariableNames: 'registry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Announcements-Core'!

!Announcer commentStamp: 'IgorStasenko 3/12/2011 18:45' prior: 0!
The code is based on the announcements as described by Vassili Bykov in <http://www.cincomsmalltalk.com/userblogs/vbykov/blogView?searchCategory=Announcements%20Framework>. The implementation uses a threadsafe subscription registry, in the sense that registering, unregistering, and announcing from an announcer at the same time in different threads should never cause failures.

For security reasons, registry is kept private, and has no accessor like in other implementations!
