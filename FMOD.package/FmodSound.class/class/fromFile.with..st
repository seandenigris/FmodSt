instance creation
fromFile: aFileReference with: anFmodSystem

	| handle |
	handle := FMOD_SOUND new.
	self 
		handleError: (self library FMOD_System_CreateSound: aFileReference fullName to: handle with: anFmodSystem handle)
		ifOk: [ ^ self new
			handle: handle;
			system: anFmodSystem;
			yourself ].