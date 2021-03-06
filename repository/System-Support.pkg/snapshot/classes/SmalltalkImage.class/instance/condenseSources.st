
!SmalltalkImage methodsFor: 'housekeeping'!
condenseSources	
	"Move all the changes onto a compacted sources file."
	"Smalltalk condenseSources"

	| f dir newVersionString |
	self fixUpProblemsWithAllCategory.
	"The above removes any concrete, spurious '-- all --' categories, which mess up the process."
	dir := FileDirectory default.
	newVersionString := UIManager default request: 'Please designate the version
for the new source code file...' initialAnswer: Smalltalk  sourceFileVersionString.
	newVersionString ifNil: [^ self].
	newVersionString = self sourceFileVersionString ifTrue:
		[^ self error: 'The new source file must not be the same as the old.'].
	Smalltalk sourceFileVersionString: newVersionString.

	"Write all sources with fileIndex 1"
	f := FileStream newFileNamed: Smalltalk sourcesName.
	f header; timeStamp.
'Condensing Sources File...'
	displayProgressFrom: 0 to: self classNames size + self traitNames size
	during:
		[:bar | | count | count := 0.
		Smalltalk allClassesAndTraitsDo:
			[:classOrTrait | bar value: (count := count + 1).
			classOrTrait fileOutOn: f moveSource: true toFile: 1]].
	f trailer; close.
	
	CompiledMethod cleanUp.
	
	"Make a new empty changes file"
	self closeSourceFiles.
	dir rename: Smalltalk changesName
		toBe: Smalltalk changesName , '.old'.
	(FileStream newFileNamed: Smalltalk changesName)
		header; timeStamp; close.
	self lastQuitLogPosition: 0.

	self setMacFileInfoOn: SmalltalkImage current changesName.
	self setMacFileInfoOn: SmalltalkImage current sourcesName.
	self openSourceFiles.
	self inform: 'Source files have been rewritten!!
Check that all is well,
and then save/quit.'! !
