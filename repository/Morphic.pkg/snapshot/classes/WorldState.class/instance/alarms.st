
!WorldState methodsFor: 'alarms'!
alarms

	^alarms ifNil: [alarms := Heap sortBlock: self alarmSortBlock]! !
