
Object subclass: #ThreadSafeTranscript
	instanceVariableNames: 'stream accessSemaphore'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Transcript'!

!ThreadSafeTranscript commentStamp: 'stephane.ducasse 4/1/2009 21:25' prior: 0!
I'm an output device.

Ultimately I can replace TranscripterStream since I'm thread safe and TranscripterStream.

ThreadSafeTranscript can be installed as the default transcript using
ThreadSafeTranscript installThreadSafeAsTranscript

It can be installed as another Transcript accessible using STranscript
ThreadSafeTranscript installThreadSafeAsSTranscript
!
