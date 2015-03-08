instance creation
new

	| handle |
	handle := FMOD_SYSTEM new.
	self 
		handleError: (self library FMOD_System_Create: handle)
		ifOk: [ ^ self newFromHandle: handle ].