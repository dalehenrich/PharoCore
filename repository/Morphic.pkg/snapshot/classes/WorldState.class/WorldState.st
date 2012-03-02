
Object subclass: #WorldState
	instanceVariableNames: 'hands viewBox canvas damageRecorder stepList lastStepTime lastStepMessage lastCycleTime alarms lastAlarmTime menuBuilder'
	classVariableNames: 'CanSurrenderToOS DebugShowDamage DeferredUIMessages DesktopMenuPragmaKeyword DesktopMenuTitle EasySelectingWorld LastCycleTime MinCycleLapse ServerMode ShowUpdateOptionInWorldMenu'
	poolDictionaries: ''
	category: 'Morphic-Worlds'!

!WorldState commentStamp: 'ls 7/10/2003 19:30' prior: 0!
The state of a Morphic world.  (This needs some serious commenting!!!!)


The MinCycleLapse variable holds the minimum amount of time that a morphic cycle is allowed to take.  If a cycle takes less than this, then interCyclePause: will wait until the full time has been used up.!
