
Object subclass: #TimeZone
	instanceVariableNames: 'offset abbreviation name'
	classVariableNames: ''
	poolDictionaries: 'ChronologyConstants'
	category: 'Kernel-Chronology'!

!TimeZone commentStamp: 'brp 9/4/2003 06:32' prior: 0!
TimeZone is a simple class to colect the information identifying a UTC time zone.

offset			-	Duration	- the time zone's offset from UTC
abbreviation	-	String		- the abbreviated name for the time zone.
name			-	String		- the name of the time zone.

TimeZone class >> #timeZones returns an array of the known time zones
TimeZone class >> #default returns the default time zone (Grenwich Mean Time)!
