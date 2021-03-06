
!ToolRegistry methodsFor: 'convenience-inspecting'!
inspect: anObject
	"Open an inspector on the given object. 
	
	You can register custom inspector for own class.
	Use:
	
	Smalltalk tools registerInspector: #MyaIspectorClass for: #MyInstancesClass "
	
	| class |
	
	class := (self inspectorClassOf: anObject)
		ifNil: [ tools at: #inspector ifAbsent: [ self error: 'no inspector found' ]].
	
	class ifNotNil: [ ^ class openOn: anObject ]
	
! !
