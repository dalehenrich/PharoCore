
Object subclass: #SystemVersion
	instanceVariableNames: 'version date highestUpdate updates type major minor suffix'
	classVariableNames: 'Current'
	poolDictionaries: ''
	category: 'System-Support'!

!SystemVersion commentStamp: 'StephaneDucasse 12/8/2010 13:50' prior: 0!
I am responsible for maintaining what version of Squeak and the VM is running.  I also track all of the update items that have been included in the image.

I'm invoked at auto start to get the latest plugins, etc.

Some queries are
	SystemVersion current major
	SystemVersion current minor
	SystemVersion current suffix
	SystemVersion current	highestUpdate!
