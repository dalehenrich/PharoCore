
Model subclass: #CPUWatcher
	instanceVariableNames: 'tally watcher threshold'
	classVariableNames: 'CpuWatcherEnabled CurrentCPUWatcher'
	poolDictionaries: ''
	category: 'Tools-Process Browser'!

!CPUWatcher commentStamp: 'VeronicaUquillas 6/11/2010 12:47' prior: 0!
CPUWatcher implements a simple runaway process monitoring tool
that will suspend a process that is taking up too much of Pharo's
time and allow user interaction. By default it watches for a Process that
is taking more than 80% of the time; this threshold can be changed.

CPUWatcher can also be used to show cpu percentages for each process 
from within the ProcessBrowser.

	CPUWatcher startMonitoring.	"process period 20 seconds, sample rate 100 msec"
	CPUWatcher current monitorProcessPeriod: 10 sampleRate: 20.
	CPUWatcher current threshold: 0.5.	"change from 80% to 50%"
	CPUWatcher stopMonitoring.
!
