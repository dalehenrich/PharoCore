
!HostSystemMenusMacOSX methodsFor: 'utility'!
modifySqueakMenu: aString
	| results fixIndex middleCharacter |
	results := aString.
	results replaceAll: $; with: Character space.
	results replaceAll: $^ with: Character space.
	results replaceAll: $!! with: Character space.
	results replaceAll: $< with: Character space.
	results replaceAll: $/ with: Character space.
	fixIndex := results indexOf: $(.
	[fixIndex > 0]
		whileTrue: [
			[(results at: fixIndex + 2) = $)
				ifTrue: [middleCharacter := results at: fixIndex + 1.
						(middleCharacter = Character space or: [middleCharacter = $(])
							ifTrue: [results at: fixIndex put: Character space]
							ifFalse: [results at: fixIndex put: $/.].
						results at: fixIndex + 1 put: middleCharacter asUppercase.
						results at: fixIndex + 2 put: Character space]
				ifFalse: [results at: fixIndex put: Character space]]
					ifError: [results at: fixIndex put:  Character space].
			fixIndex := results indexOf: $(].
	^ results! !
