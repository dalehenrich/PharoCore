
Cursor subclass: #CursorWithAlpha
	instanceVariableNames: 'fallback'
	classVariableNames: 'Constants'
	poolDictionaries: ''
	category: 'Graphics-Display Objects'!

!CursorWithAlpha commentStamp: '<historical>' prior: 0!
A 32-bit ARGB Cursor of arbitrary extent (some platforms may limit the size). Compositing assumes alpha is pre-multiplied.!
