
!MessageNames methodsFor: 'initialization'!
selectorListMenu: aMenu
	"Answer the menu associated with the selectorList"

	aMenu addList: {
		{'Senders (n)' translated. #browseSenders. 'Browse senders of the chosen selector' translated}.
		{'Copy selector to clipboard' translated. #copyName. 'Copy the chosen selector to the clipboard, for subsequent pasting elsewhere' translated}.
		#-.
		{'Show only implemented selectors' translated. #showOnlyImplementedSelectors. 'Remove from the selector-list all symbols that do not represent implemented methods' translated}}.

	^ aMenu! !
