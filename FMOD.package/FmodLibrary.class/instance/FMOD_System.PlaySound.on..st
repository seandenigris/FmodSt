API - Sound
FMOD_System: system PlaySound: sound on: channel 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT FMOD_System_PlaySound(
		FMOD_SYSTEM *system,
		FMOD_SOUND *sound,
		FMOD_CHANNELGROUP *channelgroup,
		FMOD_BOOL paused,
		FMOD_CHANNEL **channel);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_System_PlaySound(FMOD_SYSTEM system, FMOD_SOUND sound, 0, 0, FMOD_CHANNEL* channel)).