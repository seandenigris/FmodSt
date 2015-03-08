testing
isPlaying

	| isPlaying |
	isPlaying := NBExternalAddress new.
	self primStoreIsPlaying: channel in: isPlaying.
	^ isPlaying value > 0.