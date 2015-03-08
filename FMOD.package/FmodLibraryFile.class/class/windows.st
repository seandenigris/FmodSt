instance creation
windows

	^ self new
		file: FileLocator vmDirectory / 'fmodL.dll';
		nbCallingConvention: #stdcall;
		yourself.