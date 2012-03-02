
SystemAnnouncement subclass: #MethodModified
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!MethodModified commentStamp: 'BenjaminVanRyseghem 4/1/2011 16:04' prior: 0!
This announcement is emited when we RE-compile a method in a class or a trait, with: ClassDescription >> compile: or TraitDescription >> compile:. If the method is not yet registered in the class or the trait, the announcement will not be emitted.

The action of renaming a method will be handled by SystemMethodRemovedAnnouncement and SystemMethodAddedAnnouncement, since this refactoring is concretely composed by removing the old method and add a new with the new name  !
