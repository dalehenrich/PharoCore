
Object subclass: #AppRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Applications'!

AppRegistry class
	instanceVariableNames: 'registeredClasses default'!

!AppRegistry commentStamp: 'ads 4/2/2003 15:30' prior: 0!
AppRegistry is a simple little class, not much more than a wrapper around a collection. It's intended to help break dependencies between packages. For example, if you'd like to be able to send e-mail, you could use the bare-bones MailComposition class, or you could use the full-blown Celeste e-mail client. Instead of choosing one or the other, you can call "MailSender default" (where MailSender is a subclass of AppRegistry), and thus avoid creating a hard-coded dependency on either of the two mail senders.

This will only really be useful, of course, for applications that have a very simple, general, well-defined interface. Most of the time, you're probably better off just marking your package as being dependent on a specific other package, and avoiding the hassle of this whole AppRegistry thing. But for simple things like e-mail senders or web browsers, it might be useful.
!
