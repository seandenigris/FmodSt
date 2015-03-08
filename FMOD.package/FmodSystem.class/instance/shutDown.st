private
shutDown
	"From Getting Started:
	Call System::release to close the output device and free all memory associated with that object.
Channels are stopped, but sounds are not released. You will have to free them first. You do not have to stop channels yourself.
You can of course do it if you want, it is just redundant, but releasing sounds is good programming practice anyway.
You do not have to call System::close if you are releasing the system object. System::release internally calls System::close anyway."

	self release.