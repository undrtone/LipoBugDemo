Debug builds run as expected (in both the simulator and on a device).  However, a CodeSign error is shown when creating Release builds (Archive), using the following:

	* CocoaPods 0.36.0.rc.1
	* Xcode 6.2 beta 5 with WatchKit (6C121)

The problem seems to occur with Swift frameworks (`use_frameworks!`) when two or more targets include the same CocoaPod with dependencies.

```
CodeSign /Users/mjh/Library/Developer/Xcode/DerivedData/LipoBugDemo-falqorsccjdaywgavbgwtxtrierf/Build/Intermediates/ArchiveIntermediates/LipoBugDemo/IntermediateBuildFilesPath/UninstalledProducts/Alamofire.framework
    cd /Users/mjh/projects/tmp/LipoBugDemo/Pods
    export CODESIGN_ALLOCATE=/Applications/Xcode-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/codesign_allocate
    export PATH="/Applications/Xcode-Beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:/Applications/Xcode-Beta.app/Contents/Developer/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    
Signing Identity:     "iOS Development: XXXX XXXX (YYYYYYYYYY)"

    /usr/bin/codesign --force --sign XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX /Users/mjh/Library/Developer/Xcode/DerivedData/LipoBugDemo-falqorsccjdaywgavbgwtxtrierf/Build/Intermediates/ArchiveIntermediates/LipoBugDemo/IntermediateBuildFilesPath/UninstalledProducts/Alamofire.framework

/Users/mjh/Library/Developer/Xcode/DerivedData/LipoBugDemo-falqorsccjdaywgavbgwtxtrierf/Build/Intermediates/ArchiveIntermediates/LipoBugDemo/IntermediateBuildFilesPath/UninstalledProducts/Alamofire.framework: invalid or unsupported format for signature
Command /usr/bin/codesign failed with exit code 1
'''
