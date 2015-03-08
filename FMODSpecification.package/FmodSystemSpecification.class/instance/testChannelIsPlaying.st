tests
testChannelIsPlaying

	| channel |
	channel := self given: #testPlaySound.
	self library should receive: #FMOD_Channel_IsPlaying:storeIn:; with: channel and: NBExternalAddress new; does: [ :c :isPlaying | isPlaying value: 1 ].
	
	^ channel isPlaying.