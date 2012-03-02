
!NonInteractiveUIManager methodsFor: 'ui requests'!
progressInitiationExceptionDefaultAction: anException

	| result |

	result := anException workBlock value: [:barVal | ].

	anException resume: result! !
