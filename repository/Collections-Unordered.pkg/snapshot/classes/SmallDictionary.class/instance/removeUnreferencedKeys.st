
!SmallDictionary methodsFor: 'removing - keys'!
removeUnreferencedKeys   "Undeclared removeUnreferencedKeys"

	^ self unreferencedKeys do: [:key | self removeKey: key].! !
