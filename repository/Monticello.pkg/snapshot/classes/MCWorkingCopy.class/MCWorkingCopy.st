
MCPackageManager subclass: #MCWorkingCopy
	instanceVariableNames: 'versionInfo ancestry counter repositoryGroup requiredPackages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Versioning'!

!MCWorkingCopy commentStamp: 'StephaneDucasse 4/29/2011 20:44' prior: 0!
MCWorkingCopy represents one version of a package in memory. It provides support for ancestry access, required packages and the repositories in which the package is managed.

Instance Variables:
	versionInfo	<MCAncestry>
	ancestry	<MCWorkingAncestry>
	counter	<Number>
	repositoryGroup	<MCRepositoryGroup>
	requiredPackages	<Collection>!
