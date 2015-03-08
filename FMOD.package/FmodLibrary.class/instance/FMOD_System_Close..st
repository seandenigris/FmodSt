API - System
FMOD_System_Close: system
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT FMOD_System_Close(FMOD_SYSTEM *system);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_Close(FMOD_SYSTEM system)).