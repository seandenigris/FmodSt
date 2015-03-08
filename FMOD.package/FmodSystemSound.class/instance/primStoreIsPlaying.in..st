private-primitives
primStoreIsPlaying: channelHandle in: isPlayingHandle 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	"FMOD_RESULT FMOD_Channel_IsPlaying(
		FMOD_CHANNEL *channel,
		bool *isplaying);"
	
	^ self nbCall: #(FMOD_RESULT FMOD_Channel_IsPlaying(NBExternalAddress channel, NBExternalAddress* isPlayingHandle)).