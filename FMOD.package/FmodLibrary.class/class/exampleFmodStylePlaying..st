examples
exampleFmodStylePlaying: file
	"file - anAbstractFileReference or full path string"
	
	| channel sound err system  isPlaying |
	system := FMOD_SYSTEM new.
	err := FmodLibrary current FMOD_System_Create: system.
	err = 0 ifFalse: [ self errorNumber: err ].
	
	err := FmodLibrary current FMOD_System_Init: system.
    err = 0 ifFalse: [ self errorNumber: err ].

	sound := FMOD_SOUND new.
	err := FmodLibrary current FMOD_System_CreateSound: file asFileReference fullName to: sound with: system.
	err = 0 ifFalse: [ self errorNumber: err ].
	
	channel := FmodChannel new.
	err := FmodLibrary current FMOD_System: system PlaySound: sound on: channel.
	err = 0 ifFalse: [ self errorNumber: err ].

	isPlaying := NBExternalAddress new.
	[ 
		FmodLibrary current FMOD_Channel_IsPlaying: channel storeIn: isPlaying.
		 isPlaying value > 0
	] whileTrue: [ 100 milliSeconds asDelay wait ].
	
	err := FmodLibrary current FMOD_Sound_Release: sound.
	err = 0 ifFalse: [ self errorNumber: err ].
	err := FmodLibrary current FMOD_System_Close: system.
	err = 0 ifFalse: [ self errorNumber: err ].
	err := FmodLibrary current FMOD_System_Release: system.
	err = 0 ifFalse: [ self errorNumber: err ].