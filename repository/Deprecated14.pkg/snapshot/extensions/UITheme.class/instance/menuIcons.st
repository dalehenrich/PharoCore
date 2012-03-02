
!UITheme methodsFor: '*Deprecated14'!
menuIcons
	"answer a collection of associations wordings -> icon
	to decorate the menus all over the image"
	
	^ { 
	#('select' ) -> self smallSelectIcon.
	#('Tools...' ) -> self smallOpenIcon.
	#('System...' ) -> self smallConfigurationIcon.
	#('open...' ) -> self smallOpenIcon.
	#('windows...' ) -> self smallWindowIcon.
	#('debug...' ) -> self smallDebugIcon.
	#('export...' ) -> self smallExportIcon.
	#('save' ) -> self smallSaveIcon.
	#('save project on file...' ) -> self smallPublishIcon.
	#('save as...' 'save as new version' ) -> self smallSaveAsIcon.
	#('quit' 'save and quit' ) -> self smallQuitIcon.
	#('load project from file...' ) -> self smallLoadProjectIcon.
	""
	#('do it (d)' ) -> self smallDoItIcon.
	#('inspect it (i)' 'explore it (I)' 'inspect world' 'explore world' 'inspect model' 'inspect morph' 'explore morph' 'inspect owner chain' 'explore' 'inspect' 'explore (I)' 'inspect (i)' 'basic inspect' ) -> self smallInspectItIcon.
	#('print it (p)' ) -> self smallPrintIcon.
	#('debug it (D)' ) -> self smallDebugIcon.
	#('profile it' ) -> self blankIcon.
	""
	#('copy (c)' 'copy to paste buffer' 'copy text' ) -> self smallCopyIcon.
	#('paste (v)' 'paste...' ) -> self smallPasteIcon.
	#('cut (x)' ) -> self smallCutIcon.
	""
	#('accept (s)' 'yes' 'Yes' ) -> self smallOkIcon.
	#('cancel (l)' 'no' 'No' ) -> self smallCancelIcon.
	""
	#('do again (j)' ) -> self smallRedoIcon.
	#('undo (z)' ) -> self smallUndoIcon.
	""
	#('find...(f)' 'find again (g)' 'find class... (f)' 'find method...' 'extended search...') -> self smallFindIcon.
	""
	#('remove' 'remove class (x)' 'delete method from changeset (d)' 'remove method from system (x)' 'delete class from change set (d)' 'remove class from system (x)' 'destroy change set (X)' ) -> self smallDeleteIcon.
	#('add item...' 'new category...' 'new change set... (n)' ) -> self smallNewIcon.
	""
	#('new morph...' 'objects (o)' ) -> self smallObjectCatalogIcon.
	#('authoring tools...')  -> self smallAuthoringToolsIcon.
	""
	#('leftFlush' ) -> self smallLeftFlushIcon.
	#('rightFlush' ) -> self smallRightFlushIcon.
	#('centered' 'set alignment... (u)' ) -> self smallCenteredIcon.
	#('justified' ) -> self smallJustifiedIcon.
	""
	#('set font... (k)' 'list font...' 'set subtitles font' 'change font' 'system fonts...' 'change font...' ) -> self smallFontsIcon.
	#(StandardFonts  systemFontLabels)-> self smallFontsIcon.
	#('fullscreen on' 'fullscreen off' ) -> self smallFullscreenIcon.
	}
! !
