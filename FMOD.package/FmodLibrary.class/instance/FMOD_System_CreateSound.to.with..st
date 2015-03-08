API - Sound
FMOD_System_CreateSound: fullName to: sound with: system
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT F_API FMOD_System_CreateSound (FMOD_SYSTEM *system, const char *name_or_data, FMOD_MODE mode, FMOD_CREATESOUNDEXINFO *exinfo, FMOD_SOUND **sound);
"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_CreateSound (FMOD_SYSTEM system, String fullName, 0, nil, FMOD_SOUND* sound)).