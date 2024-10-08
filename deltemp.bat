@echo off

@REM https://github.com/xtcorp

@REM %SystemDrive%\ProgramData\Package Cache - Includes VS uninstallers, clean carefully. Also some viruses bases on that folder


@REM Check if User is Administrator
openfiles > NUL 2>&1
if %errorlevel%==0 (
    @REM %SystemDrive% = C:\
    @REM %windir% = C:\Windows
    @REM %HomePath% = C:\Users\User
    @REM %temp% is not used because of different behaviour as "%Temp%", "%temp%", "Temp","temp". unexpected behaivour in different OC's, so %HomePath% used instead
    @REM %appdata% is not used because of different behaviour as "%Appdata%", "%appdata%", "Appdata" and "appdata". unexpected behaivour in different OC's, so %HomePath% used instead

    @REM Emptying Recycle bin and bins from older systems/older drives
    call:delete_files_and_subdirs "%SystemDrive%\$Recycle.Bin"

    @REM Deleting temp
    @REM Driver leftovers/Installers
    call:delete_dir_itself "%SystemDrive%\AMD"
    call:delete_files_and_subdirs "%SystemDrive%\AMD"
    call:delete_dir_itself "%SystemDrive%\Intel"
    call:delete_files_and_subdirs "%SystemDrive%\Intel"
    call:delete_dir_itself "%SystemDrive%\Nvidia"
    call:delete_files_and_subdirs "%SystemDrive%\Nvidia"
    @REM Windows prefetch cache, dumps, update leftovers, migrated oc
    call:delete_dir_itself "%SystemDrive%\PerfLogs"
    call:delete_dir_itself "%SystemDrive%\tmp"
    call:delete_dir_itself "%SystemDrive%\Windows.old"
    call:delete_files_and_subdirs "%SystemDrive%\Windows.old"
    call:delete_file "%SystemDrive%\DumpStack.log"
    call:delete_files_in_dir "%windir%\Temp"
    call:delete_files_in_dir "%windir%\SoftwareDistribution\Download"
    call:delete_files_in_dir "%windir%\LiveKernelReports"
    call:delete_files_in_dir "%windir%\Downloaded Program Files"
    call:delete_files_in_dir "%SystemDrive%\Program Files (x86)\Microsoft\Temp"
    @REM Program cache
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Temp"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Temp"
    call:delete_files_and_subdirs "%HomePath%\AppData\LocalLow\Temp"
    @REM Custom program cache folders
    call:delete_dir_itself "%SystemDrive%\Temp"
    call:delete_files_and_subdirs "%SystemDrive%\Temp"
    call:delete_dir_itself "%SystemDrive%\Logs"
    call:delete_files_and_subdirs "%SystemDrive%\Logs"
    call:delete_dir_itself "%SystemDrive%\Cache"
    call:delete_files_and_subdirs "%SystemDrive%\Cache"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files\AMD\CIM\Log"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files\Electronic Arts\EA Desktop\outdatedEADesktop"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files\GIGABYTE\Control Center\logs"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Common Files\Adobe\SLCache"
    call:delete_file "%SystemDrive%\Program Files\WireGuard\Data\log.bin"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Samsung\Samsung Magician\Log"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\depotcache"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\appcache\httpcache"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\appcache\librarycache"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\config\avatarcache"
    call:delete_files_in_dir "%SystemDrive%\Program Files (x86)\Steam\dumps\*.dmp"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\logs"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\steam\cached"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\steamapps\shadercache"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\steamapps\temp"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\steamapps\workshop\temp"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\Adguard\Logs"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\AME\Logs"
    call:delete_files_in_dir "%SystemDrive%\ProgramData\Auslogics\BoostSpeed\*.log"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\chocolatey\logs"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\EA Desktop\Logs"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\Epic\EpicOnlineServices\MainService\Logs"
    call:delete_files_in_dir "%SystemDrive%\ProgramData\Famatech\Radmin VPN\*.log"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\LGHUB\cache"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\Topaz Labs LLC\Topaz Photo AI\Logs"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\Topaz Labs LLC\Topaz Video AI\Logs"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\Trackmania\Cache"
    call:delete_files_in_dir "%SystemDrive%\ProgramData\VirtualBox\*.log"
    call:delete_files_in_dir "%SystemDrive%\ProgramData\VirtualBox\*.log.1"
    call:delete_files_and_subdirs "%SystemDrive%\ProgramData\VMware\logs"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\D3DSCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\BSXCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\npm-cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\NuGet\v3-cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\numba\Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Thorium\User Data\Default\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Thorium\User Data\Default\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Google\Chrome\User Data\Default\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\NVIDIA\DXCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\NVIDIA\GLCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\NVIDIA\OptixCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\.tlauncher\logs"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\.tlauncher\legacy\Minecraft\game\logs"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Figma\DesktopProfile\v26\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Figma\DesktopProfile\v26\Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Figma\DesktopProfile\v25\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Figma\DesktopProfile\v25\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\VSCodium\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Telegram Desktop\tdata\user_data\cache\0"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Telegram Desktop\tdata\user_data\media_cache\0"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\discord\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\discord\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\discordptb\Cache\Cache_Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\discordptb\Code Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\LocalLow\NVIDIA\PerDriverVersion\DXCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\ForzaHorizon4\scratch\GraphicsCache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Adobe\Common\Media Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\Adobe\Common\Media Cache Files"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\pip\cache"
    call:delete_files_in_dir "%HomePath%\AppData\Local\Athena\*.ushaderprecache"
    call:delete_files_in_dir "%HomePath%\AppData\Local\Athena\*.upsoprecache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\FortniteGame\Saved\PersistentDownloadDir"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Spotify\Data"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Thorium\User Data\Default\Service Worker\CacheStorage"
    call:delete_files_and_subdirs "%SystemDrive%\Program Files (x86)\Steam\steamapps\workshop\content\4000"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Roblox\Downloads"
    call:delete_files_and_subdirs "%HomePath%\AppData\LocalLow\VRChat\VRChat\Cache-WindowsPlayer"
    call:delete_files_and_subdirs "%HomePath%\AppData\LocalLow\VRChat\VRChat\TextureCache-WindowsPlayer"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Steam\htmlcache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\EpicGamesLauncher\Saved\webcache_4430"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\EpicGamesLauncher\Saved\Crashes"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\EpicGamesLauncher\Saved\Logs"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\enshrouded\caches"
    call:delete_files_and_subdirs "%HomePath%\AppData\Roaming\CurseForge\Cache"
    call:delete_files_and_subdirs "%HomePath%\Documents\Need For Speed(TM) Unbound\cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\CrashDumps"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Unity\cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Roblox\UniversalApp\WebView2\EBWebView\Default\Cache"
    call:delete_files_and_subdirs "%HomePath%\AppData\Local\Roblox\UniversalApp\WebView2\EBWebView\Default\Code Cache"

    @REM SLOW CALLS
    @REM Windows prefetch cache
    call:delete_files_in_dir "%windir%\Prefetch"

    @REM Disk Cleanup. Update leftovers
    call:cleanmgr_auto

    @REM Disk Cleanup. Custom
    call:cleanmgr_low

    @REM Print version of program and stop
    call:print_ver
    pause

    @REM functions
    :delete_dir_itself
        echo trying to delete directory %~1
        if exist "%~1" (
            rd /s /q "%~1"
        )
        echo ------------------------------------
    goto:eof

    :delete_files_and_subdirs
        echo deleting files + subdirectories in %~1
        if exist "%~1" (
            for /D %%i in ("%~1\*") do (
                rd /S /Q "%%i"
                echo DELETED - "%%i"
            )
            del /Q /F /S "%~1"
        )
        echo ------------------------------------
    goto:eof

    :delete_files_in_dir
        echo deleting files in "%~1"
        del /Q /F /S "%~1"
        echo ------------------------------------
    goto:eof

    :delete_file
        echo deleting file "%~1"
        if exist "%~1" (
            del /Q /F /S "%~1"
        )
        echo ------------------------------------
    goto:eof

    :cleanmgr_auto
        echo deleting update leftovers via cleanmgr
        cleanmgr /autoclean
        echo ------------------------------------
    goto:eof

    :cleanmgr_low
        echo launching cleanmgr with all the selected items
        echo select C: drive
        cleanmgr /lowdisk
        echo ------------------------------------
    goto:eof
) else (
    call :print_ver
    echo You must run me as an Administrator. The process has been stopped.
    pause
)

@REM functions
:print_ver
        echo -------------------
        echo xtcorp:deltemp 2.0
        echo -------------------
goto:eof
