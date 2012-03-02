
ProtoObject subclass: #MessageCatcher
	instanceVariableNames: 'accumulator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!MessageCatcher commentStamp: '<historical>' prior: 0!
Any message sent to me is returned as a Message object.

"Message catcher" creates an instance of me.
!
