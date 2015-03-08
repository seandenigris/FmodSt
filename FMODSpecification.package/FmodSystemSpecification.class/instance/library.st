accessing
library
	"We are lazily initializing instead of doing in #setUp because #given: may dirty the library double. We will nil it out in each #tearDown and lazily initialize it on first use"
	library ifNil: [
		Transcript show: 'new lib'; cr.
		library := context mock: 'library'.
		FmodLibrary current: library ].
	Transcript show: 'returning lib'; cr.
	^ library.