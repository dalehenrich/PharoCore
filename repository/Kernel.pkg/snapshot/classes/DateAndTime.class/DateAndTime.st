
Magnitude subclass: #DateAndTime
	instanceVariableNames: 'seconds offset jdn nanos'
	classVariableNames: 'ClockProvider DaysSinceEpoch LastMilliSeconds LastTick LastTickSemaphore LocalTimeZone MilliSecondOffset OffsetsAreValid'
	poolDictionaries: 'ChronologyConstants'
	category: 'Kernel-Chronology'!

!DateAndTime commentStamp: 'sd 3/16/2008 14:58' prior: 0!
I represent a point in UTC time as defined by ISO 8601. I have zero duration.


My implementation uses three SmallIntegers and a Duration:
jdn		- julian day number.
seconds	- number of seconds since midnight.
nanos	- the number of nanoseconds since the second.

offset	- duration from UTC.

The nanosecond attribute is almost always zero but it defined for full ISO compliance and is suitable for timestamping.
!
