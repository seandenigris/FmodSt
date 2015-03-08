API - Sound
FMOD_Sound_Release: sound
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	"FMOD_RESULT FMOD_Sound_Release(FMOD_SOUND *sound);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_Sound_Release(FMOD_SOUND sound)).