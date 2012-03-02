
ReadWriteStream subclass: #Transcripter
	instanceVariableNames: 'frame para'
	classVariableNames: 'Icon'
	poolDictionaries: 'EventSensorConstants'
	category: 'EmergencyEvaluator'!

!Transcripter commentStamp: 'StephaneDucasse 11/19/2011 16:48' prior: 0!
Transcripter is a dog-simple scrolling stream with display.  It is intended to operate with no support from MVC or color in a minimal, or headless version of Pharo.  No attention has been paid to appearance or performance.

type exit (without quote) to exit the evaluator
type revert (without quote) to revert the last changes.

Transcripter askForEmergencyEvaluatorOrExitWithText: 'Emergency Evaluator'

Transcripter emergencyEvaluator!
