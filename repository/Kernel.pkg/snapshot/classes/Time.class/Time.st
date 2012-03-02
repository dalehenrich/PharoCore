
Magnitude subclass: #Time
	instanceVariableNames: 'seconds nanos'
	classVariableNames: ''
	poolDictionaries: 'ChronologyConstants'
	category: 'Kernel-Chronology'!

!Time commentStamp: 'dew 10/23/2004 17:58' prior: 0!
This represents a particular point in time during any given day.  For example, '5:19:45 pm'.

If you need a point in time on a particular day, use DateAndTime.  If you need a duration of time, use Duration.
!
