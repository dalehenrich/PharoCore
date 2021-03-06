
TestCase subclass: #TimespanDoSpanAYearTest
	instanceVariableNames: 'aTimespan aDuration aDate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KernelTests-Chronology'!

!TimespanDoSpanAYearTest commentStamp: 'tlk 1/6/2004 17:55' prior: 0!
I am one of several Sunit test Cases intentended to provide complete coverage for the Chronology set of classes as part of the external testing. See DateAndTimeEpochTestCase for a complete list. tlk.
My fixtures include a Timespan that crosses over a year boundary:
aDate = December 25, 2004, midnight
aDuration = 91 days
aTimeSpan= 91 days, starting December 25, 2004, midnight!
