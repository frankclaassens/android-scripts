#!/bin/sh

/Users/fanix/Desktop/M8PRO/platform-tools/adb shell "sh -c '

cd /

mkdir /system/usr/share/deletedApps
mkdir /system/usr/share/deletedApps/app
mkdir /system/usr/share/deletedApps/priv-app
chown -R root:root /system/usr/share/deletedApps
chmod -R 700 /system/usr/share/deletedApps

mv -v /system/app/AntHalService /system/usr/share/deletedApps/app
mv -v /system/app/Apollo /system/usr/share/deletedApps/app
mv -v /system/app/BasicDreams /system/usr/share/deletedApps/app
mv -v /system/app/BookmarkProvider /system/usr/share/deletedApps/app
mv -v /system/app/Browser /system/usr/share/deletedApps/app
mv -v /system/app/BuiltInPrintService /system/usr/share/deletedApps/app
mv -v /system/app/CellBroadcastReceiver /system/usr/share/deletedApps/app
mv -v /system/app/CMFileManager /system/usr/share/deletedApps/app
mv -v /system/app/CMHome /system/usr/share/deletedApps/app
mv -v /system/app/CMWallpapers /system/usr/share/deletedApps/app
mv -v /system/app/DashClock /system/usr/share/deletedApps/app
mv -v /system/app/DownloadProviderUi /system/usr/share/deletedApps/app
mv -v /system/app/DSPManager /system/usr/share/deletedApps/app
mv -v /system/app/EasterEgg /system/usr/share/deletedApps/app
mv -v /system/app/Eleven /system/usr/share/deletedApps/app
mv -v /system/app/Email /system/usr/share/deletedApps/app
mv -v /system/app/ExactCalculator /system/usr/share/deletedApps/app
mv -v /system/app/Exchange2 /system/usr/share/deletedApps/app
mv -v /system/app/Galaxy4 /system/usr/share/deletedApps/app
mv -v /system/app/Gallery2 /system/usr/share/deletedApps/app
mv -v /system/app/GalleryNext /system/usr/share/deletedApps/app
mv -v /system/app/Gello /system/usr/share/deletedApps/app
mv -v /system/app/GoogleTTS /system/usr/share/deletedApps/app
mv -v /system/app/HexoLibre /system/usr/share/deletedApps/app
mv -v /system/app/HoloSpiralWallpaper /system/usr/share/deletedApps/app
mv -v /system/app/Jelly /system/usr/share/deletedApps/app
mv -v /system/app/LiveWallpapers /system/usr/share/deletedApps/app
mv -v /system/app/LiveWallpapersPicker /system/usr/share/deletedApps/app
mv -v /system/app/LockClock /system/usr/share/deletedApps/app
mv -v /system/app/MagicSmokeWallpapers /system/usr/share/deletedApps/app
mv -v /system/app/MarkupGoogle /system/usr/share/deletedApps/app
mv -v /system/app/ModioFX /system/usr/share/deletedApps/app
mv -v /system/app/Music /system/usr/share/deletedApps/app
mv -v /system/app/NoiseField /system/usr/share/deletedApps/app
mv -v /system/app/OpenWeatherMapWeatherProvider /system/usr/share/deletedApps/app
mv -v /system/app/PartnerBookmarksProvider /system/usr/share/deletedApps/app
mv -v /system/app/PhaseBeam /system/usr/share/deletedApps/app
mv -v /system/app/PhotoPhase /system/usr/share/deletedApps/app
mv -v /system/app/PhotoTable /system/usr/share/deletedApps/app
mv -v /system/app/PrebuiltExchange3Google /system/usr/share/deletedApps/app
mv -v /system/app/PrintRecommendationService /system/usr/share/deletedApps/app
mv -v /system/app/PrintSpooler /system/usr/share/deletedApps/app
mv -v /system/app/Provision /system/usr/share/deletedApps/app
mv -v /system/app/QuickSearchBox /system/usr/share/deletedApps/app
mv -v /system/app/RRWallpapers /system/usr/share/deletedApps/app
mv -v /system/app/SoundRecorder /system/usr/share/deletedApps/app
mv -v /system/app/Terminal /system/usr/share/deletedApps/app
mv -v /system/app/Vending /system/usr/share/deletedApps/app
mv -v /system/app/VideoEditor /system/usr/share/deletedApps/app
mv -v /system/app/VisualizationWallpapers /system/usr/share/deletedApps/app
mv -v /system/app/VoicePlus /system/usr/share/deletedApps/app
mv -v /system/app/WallpaperBackup /system/usr/share/deletedApps/app
mv -v /system/app/WhisperPush /system/usr/share/deletedApps/app
mv -v /system/app/WundergroundWeatherProvider /system/usr/share/deletedApps/app
mv -v /system/app/YahooWeatherProvider /system/usr/share/deletedApps/app

mv -v /system/priv-app/AndroidMigratePrebuilt /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/AudioFX /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/CellBroadcastReceiver /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/CMAccount /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/CMAudioService /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/CMUpdater /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/CyanogenSetupWizard /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/DocumentsUI /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/DownloadProviderUi /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Eleven /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/EmergencyInfo /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Gallery2 /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/LineageSetupWizard /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/LiveLockScreenService /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/ManagedProvisioning /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/OmniSwitch /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/OTAUpdates /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/PartnerBookmarksProvider /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/PitchBlack /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Provision /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/QuickSearchBox /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Recorder /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Screencast /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/ScreenRecorder /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/SetupWizard /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/talkback /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/ThemeChooser /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/ThemeManagerService /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/ThemesProvider /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Updater /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Velvet /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/Vending /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/WeatherManagerService /system/usr/share/deletedApps/priv-app
mv -v /system/priv-app/WeatherProvider /system/usr/share/deletedApps/priv-app

sleep 5

echo 'DONE: Debloated by moving apps to locked down location...one more thing...'

tar -czvf /system/usr/share/deletedApps/deletedApps.tar.gz /system/usr/share/deletedApps/*
chmod 700 /system/usr/share/deletedApps/deletedApps.tar.gz
rm -rf /system/usr/share/deletedApps/app/*
rm -rf /system/usr/share/deletedApps/priv-app/*

echo 'REALLY DONE: Apps have been isolated and for good!'

exit

'"

#mount -o rw,remount /system
#mount -o ro,remount /system
#exit

#mv -v /system/media/audio/ringtones
#mv -v /sdcard/Alarms
#mv -v /sdcard/Notifications
#mv -v /sdcard/Podcasts

