Debug builds run as expected (in both the simulator and on a device).  However, a CodeSign error is shown when creating Release builds (Product -> Archive), using the following:

	* CocoaPods 0.36.0.rc.1
	* Xcode 6.2 beta 5 with WatchKit (6C121)

The project occurs with Swift frameworks (use_frameworks!) when two or more targets include the same local CocoaPod, with dependencies.

```
CodeSign /Users/mjh/Library/Developer/Xcode/DerivedData/LipoBugDemo-falqorsccjdaywgavbgwtxtrierf/Build/Intermediates/ArchiveIntermediates/LipoBugDemo/IntermediateBuildFilesPath/UninstalledProducts/Alamofire.framework
    cd /Users/mjh/projects/tmp/LipoBugDemo/Pods
    export CODESIGN_ALLOCATE=/Applications/Xcode-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/codesign_allocate
    export PATH="/Applications/Xcode-Beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:/Applications/Xcode-Beta.app/Contents/Developer/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    
Signing Identity:     "iOS Development: XXXX XXXX (YYYYYYYYYY)"

    /usr/bin/codesign --force --sign 175AE1EE7F6941CFB036640603F6850A5A92376D /Users/mjh/Library/Developer/Xcode/DerivedData/LipoBugDemo-falqorsccjdaywgavbgwtxtrierf/Build/Intermediates/ArchiveIntermediates/LipoBugDemo/IntermediateBuildFilesPath/UninstalledProducts/Alamofire.framework
'''
