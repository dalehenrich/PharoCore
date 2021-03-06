
!ToolRegistry methodsFor: 'convenience-inspecting'!
inspect: anObject label: aString
	"Open an inspector on the given object. 
	
	You can register custom inspector for own class.
	Use:
	
	Smalltalk tools registerInspector: #MyaIspectorClass for: #MyInstancesClass 
	"
	| class |
	
	class := self inspectorClassOf: anObject. 
	class ifNil: [ tools at: #inspector ifAbsent: []].
	
	class ifNotNil: [ ^ class openOn: anObject withEvalPane: true withLabel: aString ]
! !
