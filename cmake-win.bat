mkdir build
cd build
cmake.exe -D CMAKE_INSTALL_PREFIX="./x64" -G "Visual Studio 12 Win64" ..\
"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" /p:Configuration=Debug /p:PreferredToolArchitecture=x64 INSTALL.vcxproj && \
"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" /p:Configuration=RelWithDebInfo /p:PreferredToolArchitecture=x64 INSTALL.vcxproj
cd ..
