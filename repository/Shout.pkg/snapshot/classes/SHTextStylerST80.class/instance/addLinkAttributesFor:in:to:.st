
!SHTextStylerST80 methodsFor: 'private'!
addLinkAttributesFor: ranges in: aText to: charAttributes
	| links |
	"TODO: put this on class side"
	links := Dictionary new.
	
	"see SHTextStylerST80 class >> #defaultStyleTable for more types"
	links at: #instVar put: [ :aString| TextVariableLink variableName: aString ].
	links at: #globalVar put: [ :aString| TextClassLink className: aString ].
	#(binary unary patternBinary patternUnary keyword) do: [ :type|
		links at: type put: [ :aString| TextMethodLink selector: aString ]].
	links at: #true put: [ :aString| TextClassLink class: True ].
	links at: #false put: [ :aString| TextClassLink class: False ].
	links at: #nil put: [ :aString| TextClassLink class: UndefinedObject ].
	links at: #character put: [ :aString| TextClassLink class: Character ].
	
	ranges do: [ :range|
		links at: range type ifPresent: [ :action| |attributes|
			attributes := charAttributes at: range start.
			attributes := attributes, { action cull: (range stringIn: aText) }.
			charAttributes 
				from: range start
				to: range end
				put: attributes ]]! !
