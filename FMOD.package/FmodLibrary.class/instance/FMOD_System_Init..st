API - System
FMOD_System_Init: system" maxChannels: channelsInteger flags: flagsInteger"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>

	"FMOD_RESULT FMOD_System_Init(
		FMOD_SYSTEM *system,
		int maxchannels,
		FMOD_INITFLAGS flags,
		void *extradriverdata);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_Init(FMOD_SYSTEM system, 32, 0, nil)).