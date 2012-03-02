
Morph subclass: #HandMorph
	instanceVariableNames: 'mouseFocus keyboardFocus eventListeners mouseListeners keyboardListeners mouseClickState mouseOverHandler lastMouseEvent targetOffset damageRecorder cacheCanvas cachedCanvasHasHoles temporaryCursor temporaryCursorOffset hardwareCursor hasChanged savedPatch lastEventBuffer lastKeyScanCode combinedChar eventSource lastSystemEvent captureBlock recentModifiers'
	classVariableNames: 'CompositionWindowManager DoubleClickTime EventSource EventStats NormalCursor PasteBuffer ShowEvents'
	poolDictionaries: 'EventSensorConstants'
	category: 'Morphic-Kernel'!

!HandMorph commentStamp: '<historical>' prior: 0!
The cursor may be thought of as the HandMorph.  The hand's submorphs hold anything being carried by dragging.  

There is some minimal support for multiple hands in the same world.!
