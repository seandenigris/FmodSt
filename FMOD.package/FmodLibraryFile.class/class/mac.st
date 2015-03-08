instance creation
mac

	^ self new
		file: FileLocator imageDirectory / 'FMOD Programmers API/api/lowlevel/lib/libfmod.dylib';
		nbCallingConvention: #cdecl;
		yourself.