as yet unclassified
handleError: anInteger 

	anInteger = (FmodErrorEnumeration at: #FMOD_OK) value
		ifFalse: [ FmodLibrary errorNumber: anInteger ].