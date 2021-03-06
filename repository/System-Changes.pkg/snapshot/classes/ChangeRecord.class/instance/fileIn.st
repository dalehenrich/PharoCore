
!ChangeRecord methodsFor: 'initialization'!
fileIn
	"File the receiver in.  If I represent a method or a class-comment, file the method in and make a note of it in the recent-submissions list; if I represent a do-it, then, well, do it."

	Cursor read
		showWhile: [ 
			| methodClass aSelector s |
			(methodClass := self methodClass) notNil
				ifTrue: [ 
					methodClass
						compile: self text
						classified: category
						withStamp: stamp
						notifying: nil.
					(aSelector := self methodSelector)
						ifNotNil: [ RecentMessageList uniqueInstance 
									addMethodReference: ((methodClass >> aSelector) methodReference )] ].
			type == #doIt
				ifTrue: [ 
					((s := self string) beginsWith: '----')
						ifFalse: [ self class evaluatorClass evaluate: s ] ].
			"This expression break the recentMessageSet because it hijacks compiled methods to represent classComment. In the future we should redo a complete changeset metamodel based on classDefinition, classComment and other. 
			type == #classComment
				ifTrue: [ 
					| cls |
					(cls := Smalltalk globals at: class asSymbol) comment: self text stamp: stamp.
					RecentMessageSet noteMethodSubmission: #Comment forClass: cls ]" ]! !
