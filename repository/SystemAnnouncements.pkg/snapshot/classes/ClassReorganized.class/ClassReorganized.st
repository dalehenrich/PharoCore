
SystemAnnouncement subclass: #ClassReorganized
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!ClassReorganized commentStamp: 'cyrilledelaunay 1/18/2011 15:03' prior: 0!
This announcement corresponds to the ReorganizedEvent, which seems to (by looking at the references of ReorganizedEvent) be raised when:
- we rename a protocol (see 'renameCategory:toBe: '). if The category is not empty, SystemMethodRecategorizedAnnouncement will also be emitted
- we sort (modify the order of) protocols (see 'sortCategories')
- we add a protocol (see 'addCategory:before:')
- we remove a protocol (see 'removeCategory:' 'removeEmptyCategories')!
