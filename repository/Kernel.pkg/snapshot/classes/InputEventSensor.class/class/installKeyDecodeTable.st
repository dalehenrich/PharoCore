
!InputEventSensor class methodsFor: 'class initialization'!
installKeyDecodeTable
	"Create a decode table that swaps some keys 
	depending on the value of ControlAltKeyDecodePolicy"
	KeyDecodeTable := Dictionary new.
	self controlAltKeyDecodePolicy = #PartialMatching
		ifTrue: [self defaultCrossPlatformKeys
				do: [:c | self installDuplicateKeyEntryFor: c]]
		ifFalse: [self controlAltKeyDecodePolicy = #FullMatching
				ifTrue: [(Character allCharacters
						select: [:ea | ea isAlphaNumeric]) 
						do: [:c | self installDuplicateKeyEntryFor: c]]
				ifFalse: [self controlAltKeyDecodePolicy = #Swapped
						ifTrue: [self defaultCrossPlatformKeys
								do: [:c | self installSwappedKeyEntryFor: c]]]]! !
