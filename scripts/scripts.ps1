
# https://github.com/Raphire/Win11Debloat
& ([scriptblock]::Create((irm "https://debloat.raphi.re/")))
# https://github.com/farag2/Sophia-Script-for-Windows
iwr script.sophia.team -useb | iex
# https://github.com/ChrisTitusTech/winutil
irm "https://christitus.com/win" | iex

# https://github.com/ScoopInstaller/Scoop
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

# Add buckets
scoop bucket add extras
scoop bucket add versions

# https://github.com/open-sv/bun
powershell -c "irm bun.sh/install.ps1 | iex"

# Programs
# Note- prefer to install directly from source repository
# https://github.com/valinet/ExplorerPatcher
scoop install extras/explorerpatcher
# https://github.com/henrypp/memreduct
scoop install extras/memreduct
# https://github.com/microsoft/PowerToys
scoop install extras/powertoys
# https://www.voidtools.com (Search tool)
scoop install extras/everything
# https://github.com/fxsound2/fxsound-app
scoop install extras/fxsound
# https://www.alcpu.com/CoreTemp (Hardware monitor)
scoop install extras/coretemp
# https://github.com/M2Team/NanaZip
scoop install extras/nanazip
# https://github.com/ShareX/ShareX
scoop install extras/sharex
# https://github.com/bleachbit/bleachbit
scoop install extras/bleachbit

# Tools
# https://github.com/PowerShell/PowerShell
scoop install main/pwsh
# https://github.com/msys2/msys2-installer
scoop install main/msys2
# vcpkg 
# https://github.com/microsoft/vcpkg
scoop install main/vcpkg
# clang-tidy
# https://github.com/llvm/llvm-project/tree/main 
scoop install main/llvm
# doxygen
# https://github.com/doxygen/doxygen
scoop install main/doxygen
# valgrind (Note: valgrind doesn't work natively on Windows, use WSL)
# https://sourceware.org/git/valgrind.git
# Use WSL: wsl -d Ubuntu -e sudo apt install valgrind
# emscripten
# https://github.com/emscripten-core/emscripten
scoop install main/emscripten
# https://github.com/seerge/g-helper
scoop install g-helper

## its already there in winutil under performance tab 
# https://learn.microsoft.com/en-us/answers/questions/3808904/ultra-performance-mode  
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61
# https://learn.microsoft.com/en-us/sysinternals/downloads/autoruns

