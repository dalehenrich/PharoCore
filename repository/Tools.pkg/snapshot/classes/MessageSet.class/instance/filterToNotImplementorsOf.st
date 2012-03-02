
!MessageSet methodsFor: 'filtering'!
filterToNotImplementorsOf
	"Filter the receiver's list down to only those items whose selector is NOT one solicited from the user."

	| aFragment inputWithBlanksTrimmed |

	aFragment := UIManager default request: 'type selector: ' initialAnswer: ''.
	aFragment  isEmptyOrNil ifTrue: [^ self].
	inputWithBlanksTrimmed := aFragment trimBoth.
	Symbol hasInterned: inputWithBlanksTrimmed ifTrue:
		[:aSymbol | 
			self filterFrom:
				[:aClass :aSelector |
					aSelector ~~ aSymbol]]! !
