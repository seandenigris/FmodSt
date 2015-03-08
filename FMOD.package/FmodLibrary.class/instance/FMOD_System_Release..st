API - System
FMOD_System_Release: system
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT FMOD_System_Release(FMOD_SYSTEM *system);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_Release(FMOD_SYSTEM system)).