
!CodeHolder methodsFor: 'contents'!
contentsSymbolChanged
	"Inform any dependents of a change in the contents symbol."

	self
		changed: #showingAnyKindOfDiffs;
		changed: #showingBytecodes;
		changed: #showingDecompile;
		changed: #showingDiffs;
		changed: #showingDocumentation;
		changed: #showingPlainSource;
		changed: #showingPrettyDiffs;
		changed: #showingPrettyPrint;
		changed: #showingRegularDiffs! !
