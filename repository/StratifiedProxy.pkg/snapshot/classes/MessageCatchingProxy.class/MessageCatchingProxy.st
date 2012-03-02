
Behavior subclass: #MessageCatchingProxy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StratifiedProxy'!

!MessageCatchingProxy commentStamp: 'StephaneDucasse 3/1/2011 15:02' prior: 0!
I am an abstract class which implements a generic message catching proxy,
which can intercept *all* messages sent to proxy object and handle them in #handleMessage:forProxy:
implemented by my subclass.

The instances of my instances are trapping all messages by using #cannotInterpret: trick (see MessageTrap). Nothing could pass the trap,
even if you directly send #cannotInterpret: to the proxy, it will be trapped as any other message.




Known Limitations:
 a certain messages in system are not sent using normal lookup procedure (but inlined like ==, class), so they cannot be intercepted by proxy.

To circumvent that, one should modify a compiler to not emit a special bytecodes which represent an inlined message sends,  such as #== , #class etc and then recompile whole system.
!
