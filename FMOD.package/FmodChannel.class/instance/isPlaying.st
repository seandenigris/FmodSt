testing
isPlaying

	| isPlaying |
	isPlaying := NBExternalAddress new.
	self library FMOD_Channel_IsPlaying: self storeIn: isPlaying.
	^ isPlaying value > 0.