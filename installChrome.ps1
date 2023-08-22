# Download the Google Chrome installer
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "$env:TEMP\chrome_installer.exe"

# Install Google Chrome silently
Start-Process -FilePath "$env:TEMP\chrome_installer.exe" -Args "/install /silent /no-default-browser-check /no-first-run" -Wait

# Clean up the installer
Remove-Item -Path "$env:TEMP\chrome_installer.exe"
