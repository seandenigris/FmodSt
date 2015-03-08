API - System
FMOD_System_Create: system
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM **system);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM* system)).