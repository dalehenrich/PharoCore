
!MCFileRepositoryInspector methodsFor: 'as yet unclassified'!
refresh
	| packageNames |
	packageNames := Set new.
	packageList := nil.
	versions := repository readableFileNames collect: [ :each |
		| name |
		name := (each copyUpToLast: $.) copyUpTo: $(.
		name last isDigit ifFalse: [Array with: name with: '' with: '' with: each]
			ifTrue:
				[Array
					with: (packageNames add: (name copyUpToLast:  $-))		"pkg name"
					with: ((name copyAfterLast: $-) copyUpTo: $.)				"user"
					with: (((name copyAfterLast: $-) copyAfter: $.) asInteger	ifNil: [ 0 ])"version"
					with: each]].
	versions := versions select: [:each | (each at: 3) isNumber].
	newer := Set new.
	inherited := Set new.
	loaded := Set new.
	(MCWorkingCopy allManagers 
"		select: [ :each | packageNames includes: each packageName]")
		do: [:each |
			| latest |
			each ancestors do: [ :ancestor |
				loaded add: ancestor name.
				ancestor ancestorsDoWhileTrue: [:heir |
					(inherited includes: heir name)
						ifTrue: [false]
						ifFalse: [inherited add: heir name. true]]].
			latest := (versions select: [:v | v first = each package name])	
				detectMax: [:v | v third].
			(latest notNil and: [
				each ancestors allSatisfy: [:ancestor |
					| av |
					av := ((ancestor name copyAfterLast: $-) copyAfter: $.) asInteger.
					av < latest third or: [
						av = latest third and: [((ancestor name copyAfterLast: $-) copyUpTo: $.) ~= latest second]]]])
				ifTrue: [newer add: each package name ]].

	self changed: #packageList; changed: #versionList! !
