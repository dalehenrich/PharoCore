
Announcement subclass: #TestCaseAnnouncement
	instanceVariableNames: 'testCase testSelector testResult'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-Core-Announcements'!

!TestCaseAnnouncement commentStamp: 'tbn 4/26/2011 09:54' prior: 0!
This is a common superclass for announcements related to SUnit test cases.

Instance Variables
        testCase:                       <TestCase>
        testResult:                     <TestResult>
        testSelector:           	   <Symbol>

testCase
        - The test case

testResult
        - The result of the test case

testSelector
        - The selector of the test method!
