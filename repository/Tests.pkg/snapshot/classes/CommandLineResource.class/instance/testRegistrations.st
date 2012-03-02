
!CommandLineResource methodsFor: 'as yet unclassified'!
testRegistrations
	| dict |
	dict := Dictionary new.
	dict at: #CommandLineTestClassCreation1 put: [ :cl | cl hasParameters ] -> [ :cl |  Object subclass: #CommandLineTestClassCreation1 ].
	dict at: #CommandLineTestClassCreation2 put: [ :cl | cl hasOption: #option2 ] -> [ :cl |  Object subclass: #CommandLineTestClassCreation2 ].
	dict at: #CommandLineTestClassCreation3 put: [ :cl | cl hasOption: #foo ] -> [ :cl |  Object subclass: #CommandLineTestClassCreation3 ].
	^ dict! !
