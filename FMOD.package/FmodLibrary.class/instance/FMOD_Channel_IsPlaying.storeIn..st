API - Channel
FMOD_Channel_IsPlaying: channel storeIn: isPlayingHandle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	"FMOD_RESULT FMOD_Channel_IsPlaying(
		FMOD_CHANNEL *channel,
		bool *isplaying);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_Channel_IsPlaying(FMOD_CHANNEL channel, NBExternalAddress* isPlayingHandle)).