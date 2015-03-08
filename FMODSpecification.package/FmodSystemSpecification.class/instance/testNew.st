tests
testNew

	self library should receive: #FMOD_System_Create:; with: FMOD_SYSTEM new; does: [ :h | h handle: 20. "return" 0 ].
	self library should receive: #FMOD_System_Init:; with: [ :a | a handle = 20 ]; answers: 0.
	
	^ FmodSystem new.