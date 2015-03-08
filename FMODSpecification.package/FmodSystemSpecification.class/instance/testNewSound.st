tests
testNewSound

	| soundFile  system |
	system := self given: #testNew.
	soundFile := FileLocator vmBinary. "just because it's a file that we know exists"
	self library should receive: #FMOD_System_CreateSound:to:with:; with: soundFile fullName and: FMOD_SOUND new and: [ :h | h = system handle ]; answers: 0.
	
	^ system newSoundFromFile: soundFile.