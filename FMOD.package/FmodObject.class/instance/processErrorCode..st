private
processErrorCode: anInteger 

	anInteger = 0 ifFalse: [ self error: 'FMOD returned error code ', anInteger asString ].