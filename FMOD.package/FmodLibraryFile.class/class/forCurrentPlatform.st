instance creation
forCurrentPlatform

	Smalltalk os isMacOSX ifTrue: [ ^ self mac ].
	Smalltalk os isWin32 ifTrue: [ ^ self windows ].