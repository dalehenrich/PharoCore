
DisplayScreen subclass: #DisplayHostWindow
	instanceVariableNames: 'windowProxy title windowType'
	classVariableNames: 'ActiveWindowIndex'
	poolDictionaries: ''
	category: 'Graphics-External-Ffenestri'!

!DisplayHostWindow commentStamp: '<historical>' prior: 0!
A subclass of DisplayScreen that uses a (platform appropriate) HostWindowProxy
to do its displaying in a separate host OS window. This is just one example of a
client for HostWindowProxy.
See #test #test2 and HostWindowTests for example usage.!
