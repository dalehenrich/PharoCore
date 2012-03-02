
SharedPool subclass: #EventSensorConstants
	instanceVariableNames: ''
	classVariableNames: 'BlueButtonBit CommandKeyBit CtrlKeyBit EventKeyChar EventKeyDown EventKeyUp EventTypeDragDropFiles EventTypeKeyboard EventTypeMenu EventTypeMouse EventTypeNone EventTypeWindow OptionKeyBit RedButtonBit ShiftKeyBit WindowEventActivated WindowEventClose WindowEventIconise WindowEventMetricChange WindowEventPaint YellowButtonBit'
	poolDictionaries: ''
	category: 'Kernel-Processes'!

!EventSensorConstants commentStamp: 'LaurentLaffont 3/15/2011 20:48' prior: 0!
This is a constants, used by EventSensor to identify various event types and theirs contents.

NOTE: A constant values should be kept in sync with VM-side, which are defined in sq.h header file.!
