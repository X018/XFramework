# Q & A

## 1、 osx 编译报错

-   问题：

```shell
sh make_osx_lua53.sh 

-- The C compiler identification is AppleClang 13.0.0.13000029
-- The CXX compiler identification is AppleClang 13.0.0.13000029
CMake Error at CMakeLists.txt:16 (project):
  No CMAKE_C_COMPILER could be found.



CMake Error at CMakeLists.txt:16 (project):
  No CMAKE_CXX_COMPILER could be found.



-- Configuring incomplete, errors occurred!
See also "/Users/mac/XFramework/XClientUnity/XLibs/build_xlua_with_libs-2.1.15/build/build_osx/CMakeFiles/CMakeOutput.log".
Command line invocation:
    /Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -project XLua.xcodeproj build -target ALL_BUILD -configuration Release -hideShellScriptEnvironment

User defaults from command line:
    HideShellScriptEnvironment = YES
    IDEPackageSupportUseBuiltinSCM = YES

xcodebuild: error: 'XLua.xcodeproj' does not exist.
cp: build_osx/Release/xlua.bundle/Contents/MacOS/xlua: No such file or directory
```

-   解决方案：

```shell
# 修改 make_osx_lua53.sh 中的 cmake 指定编译器
cmake -GXcode ../ -D CMAKE_C_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc -D CMAKE_CXX_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
```



