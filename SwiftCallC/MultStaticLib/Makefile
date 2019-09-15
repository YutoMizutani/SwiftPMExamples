test:
	bash -c "cd Sources/libhello && make build"
	bash -c "cd Sources/libhellowrapper && make build"
	swift test
clean:
	bash -c "cd Sources/libhello && make clean"
	bash -c "cd Sources/libhellowrapper && make clean"
	swift package clean
