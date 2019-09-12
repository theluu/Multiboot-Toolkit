@echo off

rem >> https://niemtin007.blogspot.com
rem >> The batch file is written by niemtin007.
rem >> Thank you for using Multiboot Toolkit.

if exist "%ducky%\BOOT\lang" (
    for /f "delims=" %%b in (%ducky%\BOOT\lang) do set "lang=%%b"
)
if exist "%ducky%\BOOT\lang" (
    if "%lang%"=="Turkish" goto :Turkish
    if "%lang%"=="Vietnam" goto :Vietnam
    set "lang=English" & goto :English
) else (
    for /f "tokens=3 delims= " %%b in (
    'reg query "hklm\system\controlset001\control\nls\language" /v Installlanguage'
    ) do set "langnum=%%b"
        if "%mylang%"=="1" set "lang=English" & goto :English
        if "%mylang%"=="2" set "lang=Vietnam" & goto :Vietnam
        if "%mylang%"=="3" set "lang=Turkish" & goto :Turkish
        if "%langnum%"=="0409" set "lang=English" & goto :English
        if "%langnum%"=="041F" set "lang=Turkish" & goto :Turkish
        if "%langnum%"=="0400" set "lang=Vietnam" & goto :Vietnam
        set "lang=English" & goto :English
)

:English
rem >> common language variable
set "_lang0000_=^>^> PLEASE CHANGE YOUR DRIVE LETTER X:\ TO THE OTHER"
set "_lang0001_=^>^> Your operating system does not install in UEFI mode"
set "_lang0002_=^>^> Press any key to continue without multi system function"
set "_lang0003_=^>^> Invalid Input."
set "_lang0004_=^>^> Setting BCD System Store for UEFI 64bit..."
set "_lang0005_=^>^> Setting BCD System Store for UEFI 32bit..."
set "_lang0006_=SPECIAL ISO LIST"
set "_lang0007_=      SIZE INPUT"
set "_lang0008_=All of them"
set "_lang0009_=        (just enter to set default"
set "_lang0010_=^> Input sizes you want to create for ESP     [ MB ]"
set "_lang0011_=  Please input size at least"
set "_lang0012_=^>^> Successful..."
set "_lang0013_=^>^> Thank you for using Multiboot Toolkit ^^^^"
set "_lang0014_=^> Please wait..."
set "_lang0015_=module is being copied. Please wait..."
set "_lang0016_=^> Choose language"
rem >> [ 01 ] Install Multiboot
set "_lang0101_=Disk Number [ ? ] = "
set "_lang0102_=Multiboot Toolkit only allows you to install on an external drive."
set "_lang0103_=press any key to choose again..."
set "_lang0104_=Invalid Input."
set "_lang0105_=^>^> GPT disks are not yet supported with current version"
set "_lang0106_=^> Set multiboot data partition size 	     [ GB ] ^> "
set "_lang0107_=  You have already installed multiboot, press Enter to reinstall"
set "_lang0108_=^> Please Input the Multiboot Partition Size..."
set "_lang0109_=^>^> Please Partition Manually, then run me to install again..."
set "_lang0110_=^>^> Something Wrong! Data Partition could not be found"
set "_lang0111_=^>^> Installing icons..."
set "_lang0112_=^>^> Setting language..."
set "_lang0113_=^>^> Installing theme..."
rem >> [ 02 ] Install Modules
set "_lang0200_=^>^> Default module directory is:"
set "_lang0201_=^>^> All modules will be installed to"
set "_lang0202_=^>^> Please put all modules you need into the "Modules" folder."
set "_lang0203_=^>^> Then press any key to continue..."
set "_lang0204_=^>^> Special ISO modules are being copied. Please wait..."
set "_lang0205_=			      WARNING:"
set "_lang0206_=^>^> ESP does not have enough size to copy the special ISO"
set "_lang0207_=^>^> Press any key to continue without installing the special ISO"
set "_lang0208_=^>^> Or run [ 01 ] Install Multiboot.bat again to reinstall"
set "_lang0209_=^>^> ISO modules are being copied. Please wait..."
set "_lang0210_=^>^> WIM modules are being copied. Please wait..."
set "_lang0213_=^>^> Installing Wim Sources Module to Multiboot Drive, please wait..."
set "_lang0214_=^>^> Installing Wim Sources Module as an alternative to WinSetupFromUSB"
set "_lang0215_=^>^> Search for Windows ISO and copy install.wim module:"
set "_lang0216_=^     ^>^> install.wim module is being copied, please wait..."
set "_lang0217_=^     ^>^> Successful ^^^^"
set "_lang0218_=^>^> Installing WinSetup ISO Module to Multiboot Drive, please wait..."
set "_lang0219_=^>^> Portable apps are being extracted. Please wait..."
rem >> [ 03 ] Change Grub2 Theme
set "_lang0300_=Current Grub2 theme:"
set "_lang0301_=Choose theme"
rem >> [ 04 ] Change rEFInd Theme
set "_lang0400_=^>^>  Current rEFInd theme:"
set "_lang0401_=^>^>  Choose theme"
set "_lang0402_=^>^> Installing icons..."
rem >> [ 05 ] Update Multiboot Device
set "_lang0500_=^>^> Run [ 01 ] Install Multiboot.bat to reinstall"
set "_lang0501_=^>^> This is not higher version, doesn't need to update"
set "_lang0502_=^>^> Press any key to exit..."
rem >> [ 06 ] Install rEFInd (UEFI mode)
set "_lang0600_=> Do you want to download the last release of the rEFInd? [y/n]"
set "_lang0601_=^>^> The browser is going to open in a few seconds. Please wait..."
set "_lang0603_=   [ 1 ] Update rEFInd for Multiboot USB (For USB or External Hard Drive)"
set "_lang0604_=   [ 2 ] Install rEFInd for Multiboot OS (Install to Internal Hard Drive)"
set "_lang0605_=>  Your Option"
set "_lang0606_=Just put rEFInd data to the same folder with me to manual update  ^^_^^"
set "_lang0607_=Just put rEFInd data to the same folder with me to manual update  ^-_^^"
set "_lang0608_=^>^> You can not choose this option, rEFInd just support for UEFI mode"
set "_lang0609_=>  Confirm to install the rEFInd to EFI System Partition [ y/n ] > "
set "_lang0610_=^   Successful..."
set "_lang0611_=^>^> Enter to edit UEFI boot entries with EasyUEFI..."
rem >> [ 07 ] Install Clover (UEFI mode)
set "_lang0700_=> Download the last release of the Clover [y/n]"
set "_lang0701_=^>^> The browser is going to open in a few seconds. Please wait..."
set "_lang0702_=> Make config.plist with Cloud Clover Editor  [y/n]"
set "_lang0703_=                  ^>^> HOW CONFIG GUI FOR CLOVER BOOT MANAGER ^<^<"
set "_lang0704_=Step 1^: Press i ^>^> Enter ^>^> input your Disk^:"
set "_lang0705_=partition's number ^>^> Enter"
set "_lang0706_=Step 2^: Copy and Paste UUID/PARTUUID to your config in Cloud Clover Editor"
set "_lang0707_=Step 3^: Press q ^>^> Enter to continue installing the bootloader"
set "_lang0708_=    [ 1 ] Install Clover for Multiboot USB (For USB or External Hard Drive)"
set "_lang0709_=    [ 2 ] Install Clover for Multiboot OS (Install to Internal Hard Drive)"
set "_lang0710_=Just put Clover data to the same folder with me to manual update  ^^_^^"
set "_lang0711_=Just put Clover data to the same folder with me to manual update  ^-_^^"
set "_lang0712_=^>^> Installing Clover to Multiboot. Please wait..."
set "_lang0713_=^>^> You can not choose this option, Clover just support for UEFI mode"
set "_lang0714_=> Confirm to install the Clover to EFI System Partition [ y/n ] > "
set "_lang0715_=^   Successful..."
set "_lang0716_=^>^> Enter to edit UEFI boot entries with EasyUEFI..."
rem >> [ 09 ] Set default boot for UEFI mode
set "_lang0900_=               ^>^> SET DEFAULT BOOTLOAER FOR UEFI MODE ^<^<"
set "_lang0901_=           [ 1 ] Set Windows Boot Manager ^& rEFInd    (Secure Boot)"
set "_lang0902_=           [ 2 ] Set Windows Boot Manager ^& Grub2     (Secure Boot)"
set "_lang0903_=           [ 3 ] Set default for rEFInd Boot Manager  (Normal Boot)"
set "_lang0904_=           [ 4 ] Set default for Grub2 Bootloader     (Normal Boot)"
set "_lang0905_=Option"
REM >> CHANGE GRUB2 CONFIG LANGUAGE
set "_config0000_=return to main menu"
set "_config0001_=Loading..."
set "_config0002_=(extracted)"
set "_config0003_=Please wait..."
set "_config0004_=Loading initrd..."
set "_config0005_=Loading linux..."
rem >> main config
set "_config0100_=Boot WinPE Boot Manager UEFI"
set "_config0101_=WinSetupFromUSB Boot Manager"
set "_config0102_=Load Syslinux Bootloader"
set "_config0103_=Load Grub4dos Bootloader"
set "_config0104_=Sergei Strelec Boot Manager"
set "_config0105_=DLC Boot Manager"
set "_config0106_=Load WinPE SE Boot Manager"
set "_config0107_=WinPE Systems Collection Menu"
set "_config0108_=Multiboot USB module borrow from aguslr..."
set "_config0109_=Boot Pentesting ISO Images"
set "_config0110_=Boot Linux ISO Images"
set "_config0111_=Boot Antivirus ISO Images"
set "_config0112_=Boot Acronis ISO Images"
set "_config0113_=Boot System Tools"
set "_config0114_=Boot Memtest86 UEFI"
set "_config0115_=Grub2 File Manager"
set "_config0116_=Grub2 Options"
set "_config0117_=List devices/partitions"
set "_config0118_=Enable GRUB2's LVM support"
set "_config0119_=Enable GRUB2's RAID support"
set "_config0120_=Enable GRUB2's PATA support (to work around BIOS bugs/limitations)"
set "_config0121_=Enable GRUB2's USB support *experimental*"
set "_config0122_=Mount encrypted volumes (LUKS and geli)"
set "_config0123_=Enable serial terminal"
set "_config0124_=Restart System"
set "_config0125_=Shutdown System"
set "_config0126_=This module borrow from grub2-filemanager, thanks to A1ive"
set "_config0127_=Boot From Internal HDD (Legacy)"
set "_config0128_=Boot From Internal HDD (UEFI)"
set "_config0129_=Install Windows 7-8-10 (with ISO-Wim Method)"
set "_config0130_=Install Windows XP/2000/2003"
set "_config0131_=Boot rEFInd Boot Manager UEFI"
set "_config0132_=Press to list all WIM files"
rem >> partition config
set "_config0200_=Live Xp Kxpe"
set "_config0201_=Hirens Boot DVD 15.2 Restored Edition v1.1"
set "_config0202_=Easy Recovery Essentials Pro-Windows XP"
set "_config0203_=Easy Recovery Essentials Pro-Windows 7"
set "_config0204_=EasyRecovery Essentional for Windows 8"
set "_config0205_=EasyRecovery Essentional for Windows 10"
set "_config0206_=MiniTool Partition Wizard Boot Disk 10"
set "_config0207_=Boot-Repair-Disk x64"
set "_config0208_=Boot-Repair-Disk x32"
set "_config0209_=Paragon-RCD Normal Mode da Baslat"
set "_config0210_=Easus Partition Master 10.5"
set "_config0211_=Active Boot Disk Suite 10.1.0 LiveCD"
set "_config0212_=Boot Genius LiveCD"
set "_config0213_=ElcomSoft - User Password Show"
set "_config0214_=Windows MSDART Diagnostics-Recovery-Repair Tools"
set "_config0215_=Acronis True Image 2010"
set "_config0216_=Acronis True Image 2017"
set "_config0217_=Acronis Disk Director Suite12"
set "_config0218_=Symantec Norton Ghost 11.5"
set "_config0219_=PLoP Boot Manager 5.0.14"
set "_config0220_=ACTIVE Password Changer"
set "_config0221_=GoldMemory Pro 7.85"
set "_config0222_=Hard Disk Repair Utility 5.0"
set "_config0223_=HDDaRTs"
set "_config0224_=Kon-Boot for Windows 2.5.0"
set "_config0225_=Memtest86+"
set "_config0226_=MHDD 4.6"
set "_config0227_=Victoria 3.52"
set "_config0228_=BootIt Bare Metal 1.31"
set "_config0229_=HDD Regenerator 2011"
set "_config0230_=Windows98 Startup Disk"
set "_config0231_=Start with Legacy Mode R-DriveImage"
set "_config0232_=Start with UEFI Mode R-DriveImage"
goto :EOF

:Turkish
rem >> translated by Tayfun Akkoyun
rem >> common language variable
set "_lang0000_=^>^> LUTFEN SURUCU HARFINI X:\ DIGER SURUCU HARFLERI ILE DEGISTIRIN"
set "_lang0001_=^>^> Isletim sisteminiz UEFI modunda yuklenemiyor"
set "_lang0002_=^>^> Coklu sistem fonksiyonu olmadan devam etmek icin herhangi bir tusa basin"
set "_lang0003_=^>^> Gecersiz Giris."
set "_lang0004_=^>^> 64 bit UEFI Ayar Dosyasi..."
set "_lang0005_=^>^> 32 bit UEFI Ayar Dosyasi..."
set "_lang0006_=OZEL ISO LISTESI"
set "_lang0007_=      BOYUT GIRISI"
set "_lang0008_=Hepsi      "
set "_lang0009_=   (Sadece varsayilani ayarlamak icin girin"
set "_lang0010_=^> ESP1 alani icin ne kadarlik bir boyut olusturmak istiyorsunuz [MB]"
set "_lang0011_=^> Lutfen en azindan boyut girin"
set "_lang0012_=^>^> Basarili..."
set "_lang0013_=^>^> Multiboot Toolkit'i kullandiginiz icin tesekkur ederiz ^^^^"
set "_lang0014_=^> Lutfen bekleyin..."
set "_lang0015_=Moduller kopyalaniyor. Lutfen Bekleyin..."
set "_lang0016_=^> Kurulum Dilini Seciniz"
rem >> [ 01 ] Install Multiboot
set "_lang0101_=Disk Numarasi "
set "_lang0102_=HATA:SECTIGINIZ SURUCU,BİR USB SURUCU DEGIL"
set "_lang0103_=Tekrar secmek icin herhangi bir tusa basin..."
set "_lang0104_=Gecersiz Giris."
set "_lang0105_=^>^> Mevcut surumde GPT diskler henuz desteklenmiyor"
set "_lang0106_=^> Data Partisyon Boyutunu Ayarlama 	     [ GB ]"
set "_lang0107_=^> Multibootu tekrar kurmak icin ENTER tusuna basin..."
set "_lang0108_=^> Lutfen Multiboot Partisyon Boyutunu Girin..."
set "_lang0109_=^>^> Lutfen partisyonlari manuel olarak olusturun,daha sonra Multiboot'u tekrar calistirin..."
set "_lang0110_=^>^> Bazi hatalar var!Data Partisyonu bulunamadi"
set "_lang0111_=^>^> Simgeler yukleniyor..."
set "_lang0112_=^>^> Dil yukleniyor..."
set "_lang0113_=^>^> Tema yukleniyor..."
rem >> [ 02 ] Install Modules
set "_lang0200_=^>^> Varsayilan Module dizini:"
set "_lang0201_=^>^> Tum moduller yuklenecek"
set "_lang0202_=^>^> Lutfen ihtiyaciniz olan tum modulleri "Modules" klasorune koyunuz."
set "_lang0203_=^>^> Devam etmek icin herhangi bir tusa basin..."
set "_lang0204_=^>^> SPECIAL ISO modulleri kopyalanmaktadir. Lutfen bekleyin..."
set "_lang0205_=			      UYARI:"
set "_lang0206_=^>^> ESP alani, SPECIAL ISO'lari kopyalamak icin yeterli boyuta sahip degil"
set "_lang0207_=^>^> SPECIAL ISO LARİ yuklemeden devam etmek icin herhangi bir tusa basin"
set "_lang0208_=^>^> Ya da yeniden yuklemek icin [01] Install Multiboot.bat'i tekrar calistirin"
set "_lang0209_=^>^> ISO modulleri kopyalaniyor. Lutfen bekleyin..."
set "_lang0210_=^>^> WIM modulleri kopyalaniyor. Lutfen bekleyin..."
set "_lang0213_=^>^> Multiboot surucusune WIM Kaynak Modulleri Kopyalaniyor, lutfen bekleyin..."
set "_lang0214_=^>^> WinSetupFromUSB'ye bir alternatif olarak Wim Kaynak Modulleri kopyalaniyor"
set "_lang0215_=^>^> Windows OS ISO aramasi ve install.wim dosyasi araniyor:"
set "_lang0216_=^     ^>^> Install.wim bulundu! Install.wim dosyasi USB ye kopyalaniyor, lutfen bekleyiniz..."
set "_lang0217_=^     ^>^> Islem Basarili ^^^^"
set "_lang0218_=^>^> WinSetup ISO Modulu Multiboot surucuye Yukleniyor, lutfen bekleyin..."
set "_lang0219_=^>^> Portable uygulamalar aciliyor,Lutfen bekleyin..."
rem >> [ 03 ] Change Grub2 Theme
set "_lang0300_=Su anki Grub2 Temasi:"
set "_lang0301_=Temayi secin"
rem >> [ 04 ] Change rEFInd Theme
set "_lang0400_=^>^>  Mevcut rEFInd temasi:"
set "_lang0401_=^>^>  Temayi secin"
set "_lang0402_=^>^> Simgeler yukleniyor..."
rem >> [ 05 ] Update Multiboot USB
set "_lang0500_=^>^> Yeniden kurulum icin [01] Install Multiboot.bat dosyasini calistirin"
set "_lang0501_=^>^> Bu surum en yeni surum, guncelleme gerektirmiyor"
set "_lang0502_=^>^> Cikmak icin herhangi bir tusa basin..."
rem >> [ 06 ] Install rEFInd(UEFI Mode)
set "_lang0600_=> rEFInd'in son surumunu indirmek ister misiniz? [y/n]"
set "_lang0601_=^>^> Browser bir kac saniye icinde indirme sayfasina yonlendirilecek,Lutfen bekleyin..."
set "_lang0603_=[ 1 ] Multiboot Toolkit USB surucusundeki rEFInd in surumunu GUNCELLESTIR!"
set "_lang0604_=[ 2 ] Mevcut Isletim Sistemine rEFInd'i KUR                                     [Dikkat!Isletim sisteminize rEFInd Bootloader kurulacak]"
set "_lang0605_=^>^>  Seciminiz"
set "_lang0606_=rEFInd i elle guncellemek icin rEFInd guncelleme dosyasini Multiboot Kurulum kok dizini icine koymaniz yeterlidir  ^^_^^"
set "_lang0607_=rEFInd i elle guncellemek icin rEFInd guncelleme dosyasini Multiboot Kurulum kok dizini icine koymaniz yeterlidir  ^-_^^"
set "_lang0608_=^>^> Bu secenegi secemezsiniz! rEFInd sadece UEFI modu icin destek vermektedir"
set "_lang0609_=> EFI Sistemi Bolumune (ESP) rEFInd'i kurmak icin Enter tusuna basin..."
set "_lang0610_=^    Kurulum Basarili..."
set "_lang0611_=^>^> EasyUEFI ile UEFI onyukleme girislerini duzenlemek icin Tiklayin..."
rem >> [ 07 ] Install Clover (UEFI mode)
set "_lang0700_=> Clover'in en son surumunu indirmek ister misiniz? [y/n]"
set "_lang0701_=^>^> Browser bir kac saniye icinde indirme sayfasina yonlendirilecek,Lutfen bekleyin..."
set "_lang0702_=> Cloud Clover Editor ile config.plist duzenlemek istermisiniz? [y/n]"
set "_lang0703_=    ^>^> CLOVER BOOT MANAGER icin CONFIG GUI nasil yapilandirilir ^<^<"
set "_lang0704_=Adim 1^: i harfine Basin ^>^> Enter ^>^> Disk Numarasini girin^:"
set "_lang0705_=Partisyon Numarasini Girin ^>^> Enter"
set "_lang0706_=Adim 2^: Cloud Clover Editor'deki yapilandirmaniza UUID / PARTUUID kopyalayip yapistirin"
set "_lang0707_=Adim 3^: q ya Basin ^>^> Yuklemeye devam etmek icin Enter tusuna basin"
set "_lang0708_=         [ 1 ] Multiboot USB Surucusundeki CLOVER versiyonunu GUNCELLE "
set "_lang0709_=         [ 2 ] Mevcut Isletim Sistemime CLOVER i KUR (Dikkat!Isletim                            Sisteminize CLOVER Boot Loader Kurulacak)"
set "_lang0710_=Clover i el ile guncellemek icin Clover guncelleme dosyasini Multiboot Toolkit kok dizinine koyun.  ^^_^^"
set "_lang0711_=Clover i el ile guncellemek icin Clover guncelleme dosyasini Multiboot Toolkit kok dizinine koyun.  ^-_^^"
set "_lang0712_=^>^> Clover Multiboot a kuruluyor. Lutfen bekleyin..."
set "_lang0713_=^>^> Bu secenegi secemezsiniz, Clover sadece UEFI moduna destek vermektedir"
set "_lang0714_=> Clover'i EFI Sistem Bolumune (ESP) yuklemek icin Enter tusuna basin..."
set "_lang0715_=^   Kurulum Basarili..."
set "_lang0716_=^>^> EasyUEFI ile UEFI onyukleme girislerini duzenlemek icin girin..."
rem >> [ 09 ] Set default boot for UEFI mode
set "_lang0900_=       ^>^> VARSAYILAN BOOTLOADER I AYARLAMA EKRANI[UEFI MODDA] ^<^<"
set "_lang0901_=[ 1 ] ESP1 i Windows Boot Manager ^& ESP2 yi rEFInd olarak ayarla (Secure Boot)"
set "_lang0902_=[ 2 ] ESP1 i Windows Boot Manager ^& ESP2 yi Grub2  olarak ayarla (Secure Boot)"
set "_lang0903_=[ 3 ] ESP1 i rEFInd  Boot Manager olarak ayarla                  (Normal Boot)"
set "_lang0904_=[ 4 ] ESP1 i Grub2   Boot Manager olarak ayarla                  (Normal Boot)"
set "_lang0905_=Seciminiz"
REM >> CHANGE GRUB2 CONFIG LANGUAGE
set "_config0000_=Ana Menuye Don"
set "_config0001_=Yukleniyor..."
set "_config0002_=(Aciliyor)"
set "_config0003_=Lutfen bekleyin..."
set "_config0004_=initrd Yukleniyor..."
set "_config0005_=linux Yukleniyor..."
rem >> main config
set "_config0100_=UEFI LIVE PE(WinPE) Sistemler Menusu"
set "_config0101_=WinSetupFromUSB Boot Manager Menusu"
set "_config0102_=Syslinux Bootloaderi Yukle..."
set "_config0103_=Grub4dos Bootloaderi Yukle..."
set "_config0104_=Sergei Strelec(WinPE) Live PE Sistem"
set "_config0105_=DLC Boot(WinPE) Live PE Sistem"
set "_config0106_=WinPE SE Boot Yoneticisi Calistir"
set "_config0107_=WinPE Sistemler Menusu(Sergei,DLC,vb)"
set "_config0108_=Linux ISO lari Ara ve Linux ISO uzerinden BOOT et"
set "_config0109_=Pentesting ISO Imajlari Menusu"
set "_config0110_=Linux ISO Imajlari Menusu"
set "_config0111_=Antivirus ISO Imajlari Menusu"
set "_config0112_=Acronis ISO Imajlari Menusu"
set "_config0113_=Sistem Araclari Menusu"
set "_config0114_=Memtest86 Calistir UEFI "
set "_config0115_=Grub2 Dosya Yoneticisi"
set "_config0116_=Grub2 Secenekleri"
set "_config0117_=Aygitlari/Partisyonlari Listele"
set "_config0118_=GRUB2 nin LVM Ozelligini Entkinlestir"
set "_config0119_=GRUB2 nin RAID Ozellgini Etkinlestir"
set "_config0120_=GRUB2'nin PATA Ozelligini Etkinlestir( BIOS hatalari ve sinirlamalarini asmak icin)"
set "_config0121_=GRUB2 nin USB Ozelligini Etkinlestir *experimental*"
set "_config0122_=Sifrelenmis Suruculeri Bagla(LUKS and geli)"
set "_config0123_=Seri terminali aktif et"
set "_config0124_=Sistemi Yeniden Baslat"
set "_config0125_=Sistemi Kapat"
set "_config0126_=Bu modul grub2-filemanager dan alinmistir...A1ive a tesekkur ederim"
set "_config0127_=Birincil Harddiskten Baslat (Legacy)"
set "_config0128_=Birincil Harddiskten Baslat (UEFI)"
set "_config0129_=Kur Windows 7-8-10 (ISO-WIM Method)"
set "_config0130_=Kur Windows XP/2000/2003"
set "_config0132_=Tüm WIM Dosyalarını Listele"
rem >> partition config
set "_config0200_=Live Xp Kxpe"
set "_config0201_=Hirens Boot DVD 15.2 Restored Edition v1.1"
set "_config0202_=Easy Recovery Essentials Pro-Windows XP"
set "_config0203_=Easy Recovery Essentials Pro-Windows 7"
set "_config0204_=EasyRecovery Essentional for Windows 8"
set "_config0205_=EasyRecovery Essentional for Windows 10"
set "_config0206_=MiniTool Partition Wizard Boot Disk 10"
set "_config0207_=Boot-Repair-Disk x64"
set "_config0208_=Boot-Repair-Disk x32"
set "_config0209_=Paragon-RCD Normal Mode da Baslat"
set "_config0210_=Easus Partition Master 10.5"
set "_config0211_=Active Boot Disk Suite 10.1.0 LiveCD"
set "_config0212_=Boot Genius LiveCD"
set "_config0213_=ElcomSoft - User Password Show"
set "_config0214_=Windows MSDART Diagnostics-Recovery-Repair Tools"
set "_config0215_=Acronis True Image 2010"
set "_config0216_=Acronis True Image 2017"
set "_config0217_=Acronis Disk Director Suite12"
set "_config0218_=Symantec Norton Ghost 11.5"
set "_config0219_=PLoP Boot Manager 5.0.14"
set "_config0220_=ACTIVE Password Changer"
set "_config0221_=GoldMemory Pro 7.85"
set "_config0222_=Hard Disk Repair Utility 5.0"
set "_config0223_=HDDaRTs"
set "_config0224_=Kon-Boot for Windows 2.5.0"
set "_config0225_=Memtest86+"
set "_config0226_=MHDD 4.6"
set "_config0227_=Victoria 3.52"
set "_config0228_=BootIt Bare Metal 1.31"
set "_config0229_=HDD Regenerator 2011"
set "_config0230_=Windows98 Startup Disk"
set "_config0231_=Start with Legacy Mode R-DriveImage"
set "_config0232_=Start with UEFI Mode R-DriveImage"
goto :EOF

:Vietnam
chcp 65001 >nul
rem >> common language variable
set "_lang0000_=^>^> VUI LÒNG THAY ĐỔI TÊN Ổ ĐĨA X:\ SANG TÊN KHÁC"
set "_lang0001_=^>^> Hệ điều hành của bạn không cài đặt với chế độ UEFI"
set "_lang0002_=^>^> Chức năng hỗ trợ đa hệ đều hành sẽ không dùng được trên máy này"
set "_lang0003_=^>^> Đầu vào không hợp lệ."
set "_lang0004_=^>^> Cài đặt cấu hình cho UEFI 64bit..."
set "_lang0005_=^>^> Cài đặt cấu hình cho UEFI 32bit..."
set "_lang0006_=DANH SÁCH ISO ĐẶC BIỆT"
set "_lang0007_=  NHẬP VÀO"
set "_lang0008_=Tất cả     "
set "_lang0009_=   (Chỉ cần bấm Enter để cài đặt mặc định"
set "_lang0010_=^> Thiết lập dung lượng cho phân vùng ESP1 [MB]"
set "_lang0011_=^> Vui lòng nhập dung lượng ít nhất là"
set "_lang0012_=^>^> Thành công..."
set "_lang0013_=^>^> Cám ơn bạn đã sử dụng Multiboot Toolkit ^^^^"
set "_lang0014_=^> Vui lòng chờ..."
set "_lang0015_=module đang được sao chép. Vui lòng chờ..."
set "_lang0016_=^> Chọn ngôn ngữ"
rem >> [ 01 ] Install Multiboot
set "_lang0101_=Nhập số thứ tự của thiết bị: "
set "_lang0102_=CẢNH BÁO: SỐ THỨ TỰ BẠN NHẬP KHÔNG PHẢI LÀ THIẾT BỊ GẮN NGOÀI"
set "_lang0103_=bấm phím bất kỳ để chọn lại..."
set "_lang0104_=Đầu vào không hợp lệ."
set "_lang0105_=^>^> Kiến trúc ổ cứng GPT chưa được hỗ trợ trong phiên bản này"
set "_lang0106_=^> Nhập dung lượng phân vùng data cho multiboot 	     [ GB ]"
set "_lang0107_=^> Enter để cài đặt lại multiboot..."
set "_lang0108_=^> Vui lòng nhập dung lượng cho phân vùng data của multiboot..."
set "_lang0109_=^>^> Vui lòng phân vùng bằng tay, chạy lại tớ để cài đặt..."
set "_lang0110_=^>^> Có gì đó không đúng! Không thấy phân vùng data"
set "_lang0111_=^>^> Cài đặt icon..."
set "_lang0112_=^>^> Cài đặt ngôn ngữ..."
set "_lang0113_=^>^> Cài đặt chủ đề..."
rem >> [ 02 ] Install Modules
set "_lang0200_=^>^> Thư mục module mặc định là:"
set "_lang0201_=^>^> Tất cả Module sẽ được cài đặt vào"
set "_lang0202_=^>^> Vui lòng đặt tất cả module bạn muốn vào folder "Modules" "
set "_lang0203_=^>^> Sau đó bấm phím bất kỳ để tiếp tục..."
set "_lang0204_=^>^> Các ISO đặc biệt đang được sao chép. Vui lòng chờ..."
set "_lang0205_=			      CẢNH BÁO:"
set "_lang0206_=^>^> Phân vùng ESP không đủ dung lượng để sao chép các ISO đặc biệt"
set "_lang0207_=^>^> Bấm phím bất kỳ để bỏ qua và tiếp tục cài đặt"
set "_lang0208_=^>^> Hoặc chạy [ 01 ] Install Multiboot.bat lần nữa để cài đặt lại multiboot"
set "_lang0209_=^>^> ISO modules đang được sao chép. Vui lòng chờ..."
set "_lang0210_=^>^> WIM modules đang được sao chép. Vui lòng chờ..."
set "_lang0213_=^>^> Đang cài đặt Wim Sources Module vào Multiboot Drive, vui lòng chờ..."
set "_lang0214_=^>^> Đang cài đặt Wim Sources Module như một sự thay thế cho WinSetupFromUSB"
set "_lang0215_=^>^> Tìm kiếm ổ đĩa chứa bộ cài Windows và sao chép install.wim module:"
set "_lang0216_=^     ^>^> install.wim module đang được sao chép, vui lòng chờ..."
set "_lang0217_=^     ^>^> Thành công roài ^^^^"
set "_lang0218_=^>^> Đang cài đặt WinSetup ISO Module vào Multiboot Drive, vui lòng chờ..."
set "_lang0219_=^>^> Phần mềm dạng Portable đang được giải nén. Vui lòng chờ..."
rem >> [ 03 ] Change Grub2 Theme
set "_lang0300_=Theme hiện tại của Grub2:"
set "_lang0301_=Chọn theme"
rem >> [ 04 ] Change rEFInd Theme
set "_lang0400_=^>^>  Theme của rEFInd hiện tại:"
set "_lang0401_=^>^>  Chọn theme đê"
set "_lang0402_=^>^> Đang cài đặt icon..."
rem >> [ 05 ] Update Multiboot Device
set "_lang0500_=^>^> Chạy [ 01 ] Install Multiboot.bat để cài đặt lại"
set "_lang0501_=^>^> Đây không phải là phiên bản cao hơn, không cần update"
set "_lang0502_=^>^> Nhấn phím bất kỳ để thoát..."
rem >> [ 06 ] Install rEFInd (UEFI mode)
set "_lang0600_=> Bạn có muốn tải phiên bản mới nhất của rEFInd không? [y/n]"
set "_lang0601_=^>^> Trình duyệt sẽ mở trong vòng vài giây nữa. Vui lòng chờ..."
set "_lang0603_=    [ 1 ] Cập nhật rEFInd cho Multiboot USB (USB hoặc ổ cứng gắn ngoài)"
set "_lang0604_=    [ 2 ] Cài đặt rEFInd cho Multiboot OS   (Cài đặt vào ổ cứng trong)"
set "_lang0605_=^>^>  Lựa chọn của bạn là gì"
set "_lang0606_=Đặt file data đã tải về của rEFInd vào cùng thư mục để cập nhật  ^^_^^"
set "_lang0607_=Đặt file data đã tải về của rEFInd vào cùng thư mục để cập nhật  ^-_^^"
set "_lang0608_=^>^> Bạn không thể chọn lựa chọn này, rEFInd chỉ hỗ trợ cho UEFI mode"
set "_lang0609_=> Xác nhận cài đặt rEFInd vào phân vùng EFI của hệ thống [ y/n ] > "
set "_lang0610_=^   Thành công..."
set "_lang0611_=^>^> Enter để thêm và chỉnh sửa menu của UEFI với EasyUEFI..."
rem >> [ 07 ] Install Clover (UEFI mode)
set "_lang0700_=> Bạn có muốn tải phiên bản mới nhất của Clover không? [y/n]"
set "_lang0701_=^>^> Trình duyệt sẽ mở trong vòng vài giây nữa. Vui lòng chờ..."
set "_lang0702_=> Tạo config.plist với Cloud Clover Editor [y/n]"
set "_lang0703_=      ^>^> LÀM SAO ĐỂ TÙY CHỈNH CẤU HÌNH GUI CHO CLOVER BOOT MANAGER ^<^<"
set "_lang0704_=Bước 1^: Bấm i ^>^> Enter ^>^> nhập số thứ tự phân vùng của Disk^:"
set "_lang0705_= ^>^> Enter"
set "_lang0706_=Bước 2^: Sao chép và dán UUID/PARTUUID vào file cấu hình trên Cloud Clover Editor"
set "_lang0707_=Bước 3^: Bấm q ^>^> Enter để tiếp tục cài đặt bootloader"
set "_lang0708_=       [ 1 ] Cài đặt Clover cho Multiboot USB (USB hoặc ổ cứng gắn ngoài)"
set "_lang0709_=       [ 2 ] Cài đặt Clover cho Multiboot OS   (Cài đặt vào ổ cứng trong)"
set "_lang0710_=Đặt file data đã tải về của Clover vào cùng thư mục để cập nhật  ^^_^^"
set "_lang0711_=Đặt file data đã tải về của Clover vào cùng thư mục để cập nhật  ^-_^^"
set "_lang0712_=^>^> Đang cài đặt Clover vào Multiboot. Vui lòng chờ..."
set "_lang0713_=^>^> Bạn không thể chọn lựa chọn này, rEFInd chỉ hỗ trợ cho UEFI mode"
set "_lang0714_=> Xác nhận cài đặt Clover vào phân vùng EFI của hệ thống [ y/n ] > "
set "_lang0715_=^   Thành công..."
set "_lang0716_=^>^> Enter để thêm và chỉnh sửa menu của UEFI với EasyUEFI..."
rem >> [ 09 ] Set default boot for UEFI mode
set "_lang0900_=          ^>^> CÀI ĐẶT BOOTLOADER MẶC ĐỊNH CHO CHẾ ĐỘ UEFI ^<^<"
set "_lang0901_=       [ 1 ] Sử dụng cả Windows Boot Manager ^& rEFInd    (Secure Boot)"
set "_lang0902_=       [ 2 ] Sử dụng cả Windows Boot Manager ^& Grub2     (Secure Boot)"
set "_lang0903_=       [ 3 ] Chỉ sử dụng rEFInd Boot Manager             (Normal Boot)"
set "_lang0904_=       [ 4 ] Chỉ sử dụng Grub2 Bootloader                (Normal Boot)"
set "_lang0905_=Lựa chọn của bạn"
REM >> CHANGE GRUB2 CONFIG LANGUAGE
set "_config0000_=trở về menu chính"
set "_config0001_=Đang tải..."
set "_config0002_=(extracted)"
set "_config0003_=Vui lòng chờ..."
set "_config0004_=Đang tải initrd..."
set "_config0005_=Đang tải linux..."
rem >> main config
set "_config0100_=Chạy trình quản lý WinPE cho UEFI"
set "_config0101_=Trình quản lý cho WinSetupFromUSB"
set "_config0102_=Chạy Syslinux Bootloader"
set "_config0103_=Chạy Grub4dos Bootloader"
set "_config0104_=Trình quản lý WinPE Sergei Strelec"
set "_config0105_=Chạy vào menu DLC Boot"
set "_config0106_=Chạy trình quản lý WinPE SE"
set "_config0107_=Bộ sưu tập WinPE"
set "_config0108_=Multiboot USB module mượn từ dự án của aguslr..."
set "_config0109_=Chạy ISO cho thử nghiệm - xâm nhập"
set "_config0110_=Chạy ISO cho các bản Linux thông thường"
set "_config0111_=Chạy ISO Antivirus để quét virus"
set "_config0112_=Chạy ISO của bộ công cụ Acronis"
set "_config0113_=Chạy công cụ hệ thống"
set "_config0114_=Chạy Memtest86 UEFI"
set "_config0115_=Trình quản lý file của Grub2"
set "_config0116_=Tùy chọn cho Grub2"
set "_config0117_=List devices/partitions"
set "_config0118_=Kính hoạt hỗ trợ GRUB2's LVM"
set "_config0119_=Kính hoạt hỗ trợ GRUB2's RAID"
set "_config0120_=Kính hoạt hỗ trợ GRUB2's PATA (to work around BIOS bugs/limitations)"
set "_config0121_=Kính hoạt hỗ trợ GRUB2's USB *experimental*"
set "_config0122_=Mount encrypted volumes (LUKS and geli)"
set "_config0123_=Enable serial terminal"
set "_config0124_=Khởi động lại hệ thống"
set "_config0125_=Tắt hệ thống"
set "_config0126_=Tính năng này vay mượn từ grub2-filemanager, cám ơn A1ive"
set "_config0127_=Khởi động vào Windows của bạn (Legacy)"
set "_config0128_=Khởi động vào Windows của bạn (UEFI)"
set "_config0129_=Cài đặt Windows 7-8-10 (với module ISO-Wim)"
set "_config0130_=Cài đặt Windows XP/2000/2003"
set "_config0132_=Chọn để tìm tệp WIM"
rem >> partition config
set "_config0200_=Live Xp Kxpe"
set "_config0201_=Hirens Boot DVD 15.2 Restored Edition v1.1"
set "_config0202_=Easy Recovery Essentials Pro-Windows XP"
set "_config0203_=Easy Recovery Essentials Pro-Windows 7"
set "_config0204_=EasyRecovery Essentional for Windows 8"
set "_config0205_=EasyRecovery Essentional for Windows 10"
set "_config0206_=MiniTool Partition Wizard Boot Disk 10"
set "_config0207_=Boot-Repair-Disk x64"
set "_config0208_=Boot-Repair-Disk x32"
set "_config0209_=Paragon-RCD Normal Mode da Baslat"
set "_config0210_=Easus Partition Master 10.5"
set "_config0211_=Active Boot Disk Suite 10.1.0 LiveCD"
set "_config0212_=Boot Genius LiveCD"
set "_config0213_=ElcomSoft - User Password Show"
set "_config0214_=Windows MSDART Diagnostics-Recovery-Repair Tools"
set "_config0215_=Acronis True Image 2010"
set "_config0216_=Acronis True Image 2017"
set "_config0217_=Acronis Disk Director Suite12"
set "_config0218_=Symantec Norton Ghost 11.5"
set "_config0219_=PLoP Boot Manager 5.0.14"
set "_config0220_=ACTIVE Password Changer"
set "_config0221_=GoldMemory Pro 7.85"
set "_config0222_=Hard Disk Repair Utility 5.0"
set "_config0223_=HDDaRTs"
set "_config0224_=Kon-Boot for Windows 2.5.0"
set "_config0225_=Memtest86+"
set "_config0226_=MHDD 4.6"
set "_config0227_=Victoria 3.52"
set "_config0228_=BootIt Bare Metal 1.31"
set "_config0229_=HDD Regenerator 2011"
set "_config0230_=Windows98 Startup Disk"
set "_config0231_=Start with Legacy Mode R-DriveImage"
set "_config0232_=Start with UEFI Mode R-DriveImage"
goto :EOF
