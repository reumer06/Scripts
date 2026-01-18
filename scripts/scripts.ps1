# https://github.com/Raphire/Win11Debloat
& ([scriptblock]::Create((irm "https://debloat.raphi.re/")))

# https://github.com/farag2/Sophia-Script-for-Windows
iwr script.sophia.team -useb | iex

# https://github.com/ChrisTitusTech/winutil
irm "https://christitus.com/win" | iex

# Programs

# https://github.com/valinet/ExplorerPatcher
winget install valinet.ExplorerPatcher --accept-source-agreements

# https://github.com/henrypp/memreduct
winget install Henry++.MemReduct --accept-source-agreements

# https://github.com/microsoft/PowerToys
winget install Microsoft.PowerToys --accept-source-agreements

# https://www.voidtools.com (Search tool)
winget install voidtools.Everything --accept-source-agreements

# https://github.com/fxsound2/fxsound-app
winget install FxSound.FxSound --accept-source-agreements

# https://www.alcpu.com/CoreTemp (Hardware monitor)
winget install ALCPU.CoreTemp --accept-source-agreements

# https://github.com/M2Team/NanaZip
winget install M2Team.NanaZip --accept-source-agreements

# https://github.com/ShareX/ShareX
winget install ShareX.ShareX --accept-source-agreements

# https://github.com/bleachbit/bleachbit
winget install BleachBit.BleachBit --accept-source-agreements

# Tools

# https://github.com/PowerShell/PowerShell
winget install Microsoft.PowerShell --accept-source-agreements

# https://github.com/msys2/msys2-installer
winget install MSYS2.MSYS2 --accept-source-agreements

# vcpkg 
# https://github.com/microsoft/vcpkg
git clone https://github.com/microsoft/vcpkg.git 

## this is already there is winutil under performance tab 
# https://learn.microsoft.com/en-us/answers/questions/3808904/ultra-performance-mode  
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61