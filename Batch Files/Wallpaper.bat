@echo off
:: Ask user for wallpaper path
echo Drag the image you want to set as wallpaper into the cmd that the .bat file opens
set /p WallpaperPath=

:: Check if the file exists
if not exist "%WallpaperPath%" (
    echo The file "%WallpaperPath%" does not exist. Please check the path and try again.
    pause
    exit /b
)

:: Set registry key for desktop wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%WallpaperPath%" /f

:: Ask user for wallpaper style
echo Choose wallpaper style:
echo 0 = Centered
echo 1 = Tiled
echo 2 = Stretched
set /p WallpaperStyle=Enter the number for your preferred style: 

:: Validate user input for WallpaperStyle
if "%WallpaperStyle%"=="0" (
    set WallpaperStyle=0
) else if "%WallpaperStyle%"=="1" (
    set WallpaperStyle=1
) else if "%WallpaperStyle%"=="2" (
    set WallpaperStyle=2
) else (
    echo Invalid input. Defaulting to 'Stretched' (style 2).
    set WallpaperStyle=2
)

:: Set the WallpaperStyle in the registry
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "%WallpaperStyle%" /f

:: Ask user if they want the wallpaper to be tiled
echo Do you want to tile the wallpaper? (1 for Yes, 0 for No)
set /p TileWallpaper=Enter 1 for Yes or 0 for No: 

:: Validate TileWallpaper input
if "%TileWallpaper%"=="1" (
    set TileWallpaper=1
) else (
    set TileWallpaper=0
)

:: Set the TileWallpaper registry key
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "%TileWallpaper%" /f

:: Refresh the desktop to apply the wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo Wallpaper has been changed successfully!
pause
