
Object subclass: #HostWindowProxy
	instanceVariableNames: 'windowHandle sourceForm'
	classVariableNames: 'ActiveProxyClass Registry'
	poolDictionaries: ''
	category: 'Graphics-External-Ffenestri'!

!HostWindowProxy commentStamp: 'tpr 10/14/2004 16:00' prior: 0!
This is a proxy for a Host OS window and as such is considered a disposable item. When an image is restarted the client must recreate suitable instances from the information they hold. Platform specific subclasses are available to translate abstract requirements into possible platform concrete data.
There is a registry of instances so that when users let go they can be guaranteed to close down properly. Because the instances point to the source Form in use this can on occasion result in a cycle that defeats the Weak mechanism - hence the implementation of #executor & #asExecutor.
The only requirements placed on the sourceForm instvar are those of being like a DisplayScreen - can return a bits array, the width, depth etc AND able to respond to #resetProxy to remove and rebuild the window proxy!
