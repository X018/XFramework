mkdir -p build_osx && cd build_osx
cmake -GXcode ../
# 上面一行代码执行报错的话，打开下面的代码指定编译路径
# cmake -GXcode ../ \
# -D CMAKE_C_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc \
# -D CMAKE_CXX_COMPILER=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
cd ..
cmake --build build_osx --config Release
mkdir -p plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/
cp build_osx/Release/xlua.bundle/Contents/MacOS/xlua plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/xlua

