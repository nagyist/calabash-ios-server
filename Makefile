default:
	rm -rf build
	xcodebuild -target "calabash-simulator" -configuration Debug SYMROOT=build SDKROOT=iphonesimulator IPHONEOS_DEPLOYMENT_TARGET=5.1.1
	xcodebuild -target "calabash-device"    -configuration Debug SYMROOT=build SDKROOT=iphoneos        IPHONEOS_DEPLOYMENT_TARGET=5.1.1
	scripts/make-framework.rb verify

clean:
	rm -rf build