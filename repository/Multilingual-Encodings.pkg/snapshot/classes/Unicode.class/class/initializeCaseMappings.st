
!Unicode class methodsFor: 'casing'!
initializeCaseMappings
	"Unicode initializeCaseMappings"
	ToCasefold := IdentityDictionary new.
	ToUpper := IdentityDictionary new.
	ToLower := IdentityDictionary new.
	UIManager default informUserDuring: [ :bar| | result |
		bar value: 'Downloading Unicode data'.
		(result := ZnClient get: 'http://www.unicode.org/Public/UNIDATA/CaseFolding.txt') isSuccess
			ifFalse: [ ^ self error: 'Download failed' ].
		bar value: 'Updating Case Mappings'.
		self parseCaseMappingFrom: result contents readStream ].! !
