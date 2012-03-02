
!MCWorkingCopyBrowser methodsFor: '*Polymorph-Tools-Diff'!
viewChanges
	"View the changes made in the working copy."
	
	| patch |
	'Finding changes' displayProgressFrom: 0 to: 10 during:[:bar|
		self canSave ifTrue:[
		bar value: 1.
		patch := workingCopy changesRelativeToRepository: self repository].
		patch isNil ifTrue: [^ self].
		bar value:3.
		patch isEmpty
			ifTrue: [
				workingCopy modified: false.
				bar value: 10.
				self inform: 'No changes' ]
			ifFalse: [
				workingCopy modified: true.
				bar value: 5.
				self
					viewChanges: patch
					from: workingCopy  packageName, ' (', workingCopy ancestry ancestorString, ')'
					to: ('Modified {1}' translated format: {workingCopy description})]]! !
