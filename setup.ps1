Write-Host "`nSelect the tool to install:"
Write-Host "1. Python"
Write-Host "2. GCC"
Write-Host "3. Rust"
Write-Host "4. Activate Windows"

$choice = Read-Host "Enter your choice (1-4):"

function Install-Python {
    Write-Host "`nSelect Python version:"
    Write-Host "1. 3.10.13"
    Write-Host "2. 3.11.9"
    Write-Host "3. 3.12.2"
    $pyChoice = Read-Host "Enter version (1-3):"
    switch ($pyChoice) {
        "1" { $ver = "3.10.13" }
        "2" { $ver = "3.11.9" }
        "3" { $ver = "3.12.2" }
        default { Write-Host "Invalid choice"; return }
    }
    $file = "python-$ver-amd64.exe"
    $url = "https://www.python.org/ftp/python/$ver/$file"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
    Write-Host "Python $ver installed."
}

function Install-GCC {
    Write-Host "`nInstalling MSYS2 with GCC"
    $url = "https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20240128.exe"
    $file = "msys2-installer.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file"
    Write-Host "After installation, open MSYS2 shell and run: pacman -Syu && pacman -S mingw-w64-x86_64-gcc"
}

function Install-Rust {
    Write-Host "`nInstalling Rust"
    $url = "https://win.rustup.rs/x86_64"
    $file = "rustup-init.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "-y" -Wait
    Write-Host "Rust installed."
}

function Activate-Windows {
    Write-Host "`nActivating Windows"
    irm https://get.activated.win | iex
}


switch ($choice) {
    "1" { Install-Python }
    "2" { Install-GCC }
    "3" { Install-Rust }
    "4" { Activate-Windows }
    default { Write-Host "Invalid choice" }
}
