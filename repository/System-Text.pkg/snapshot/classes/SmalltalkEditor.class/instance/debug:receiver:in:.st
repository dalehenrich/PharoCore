
!SmalltalkEditor methodsFor: 'do-its'!
debug: aCompiledMethod receiver: anObject in: evalContext

 	 | guineaPig debugger context |

       guineaPig := [
              aCompiledMethod
                       valueWithReceiver: anObject
                       arguments: (evalContext ifNil: [ #() ] ifNotNil: [ { evalContext } ]) ] newProcess.
       context := guineaPig suspendedContext.
       debugger :=  Smalltalk tools debugger new
               process: guineaPig
               controller: nil
               context: context.
       debugger openFullNoSuspendLabel: 'Debug it'.
       [ debugger interruptedContext method == aCompiledMethod ]
               whileFalse: [ debugger send ]! !
