
!Morph methodsFor: 'button'!
doButtonAction
	"If the receiver has a button-action defined, do it now.  The default button action of any morph is, well, to do nothing.  Note that there are several ways -- too many ways -- for morphs to have button-like actions.  This one refers not to the #mouseUpCodeToRun feature, nor does it refer to the Player-scripting mechanism.  Instead it is intended for morph classes whose very nature is to be buttons -- this method provides glue so that arbitrary buttons on the UI can be 'fired' programatticaly from user scripts"! !
