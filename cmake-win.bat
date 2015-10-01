mkdir build\win
cd build\win
cmake.exe -D CMAKE_INSTALL_PREFIX="../win64" -G "Visual Studio 12 Win64" -D FORCE_STATIC_VCRT:BOOL=ON -D LIBC:BOOL=ON -D SDL_TIMERS:BOOL=OFF -D SDL_AUDIO:BOOL=OFF -D SDL_SHARED:BOOL=OFF -D CMAKE_DEBUG_POSTFIX="_debug" ..\..
"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" /p:Configuration=Debug /p:PreferredToolArchitecture=x64 INSTALL.vcxproj && \
"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" /p:Configuration=RelWithDebInfo /p:PreferredToolArchitecture=x64 INSTALL.vcxproj
cd ..\..
copy /v /y build\win\Debug\*.pdb build\win64\lib\
copy /v /y build\win\RelWithDebInfo\*.pdb build\win64\lib\
