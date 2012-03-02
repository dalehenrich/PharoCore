
!ArrayLiteralTest methodsFor: 'running'!
runCase

	SystemChangeNotifier uniqueInstance doSilently: [ super runCase ]
! !
