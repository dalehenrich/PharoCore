
!MorphTreeMorph methodsFor: 'column handling'!
columns: aListOfTreeColumn
	"set the columns -  as a consequence, the topHeader is update (if present) and column resizers are added"
	columns := aListOfTreeColumn asOrderedCollection.
	aListOfTreeColumn do: [:col | col container: self].
	self buildTopHeader .
	self addColumnResizers.
! !
