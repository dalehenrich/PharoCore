
!JapaneseEnvironment class methodsFor: 'rendering support'!
isBreakableAt: index in: text	| prev |	index = 1 ifTrue: [^ false].	prev := text at: index - 1.	prev leadingChar ~= JapaneseEnvironment leadingChar ifTrue: [^ true].	^ (('、。，．・：；？！゛゜´｀¨＾―‐／\〜‖｜…‥’”）〕］｝〉》」』】°′″℃' includes: (text at: index)) or: ['‘“（〔［｛〈《「『【°′″℃＠§' includes: prev]) not.!]lang[(177 11 1 1 1 4 1 16 1 3 36 11 1 4 25)0,5,0,5,0,5,0,5,0,5,0,5,0,5,0! !
