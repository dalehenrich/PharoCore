
Object subclass: #EventManager
	instanceVariableNames: 'actionMap'
	classVariableNames: 'ActionMaps'
	poolDictionaries: ''
	category: 'System-Object Events'!

!EventManager commentStamp: 'tlk 5/7/2006 20:01' prior: 0!
An EventManager is used to registers a 'observer' object's interest in in changes to an 'observed' object.  Then when the observered object is changed,  EventManager broadcasts the an update message to all objects with a registered interest.  Finally, the Event manager can be used to remove an object from the list of observer object.

An interested object is said to be a dependant on the target object.  Registering an interest in an event is called adding a dependant. Deregistering is called removing  a dependant.  The EventManager's action map is a WeakIdentityDictionary that maps events (selectors) to dependants (objects & selectors) in a way that ensures the mapping is to specific objects (hence identity) and in a way that allows the object to be garbage collected if not other used (hence weak.)  EventManager class has ActionMaps which has one actionMap for each object.

Classic uses of an EventManager are to implement the Observer Pattern, see ChangeNotification or the MorphicModle as examples.!
