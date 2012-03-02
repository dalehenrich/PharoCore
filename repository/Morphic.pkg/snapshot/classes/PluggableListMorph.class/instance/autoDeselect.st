
!PluggableListMorph methodsFor: 'accessing'!
autoDeselect

	^ self resetListSelector notNil or: [ autoDeselect ifNil: [ true ] ]! !
