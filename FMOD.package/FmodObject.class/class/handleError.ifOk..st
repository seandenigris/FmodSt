as yet unclassified
handleError: anInteger ifOk: aBlock
	
	^ anInteger = (FmodErrorEnumeration at: #FMOD_OK) value
		ifTrue: [ aBlock value ]
		ifFalse: [ FmodLibrary errorNumber: anInteger ].