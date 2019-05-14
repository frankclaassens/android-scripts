cd /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/;

tar -xvzf /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/equuleus_global_images_V10.2.2.0.PECMIXM_20190302.0000.00_9.0_global_2dc38e8b65.tgz;

mv /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/equuleus_global_images_V10.2.2.0.PECMIXM_20190302.0000.00_9.0_global/images /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/

imagesDir="/Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/images/"

sleep 5;

rm -rf /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/equuleus_global_images_V10.2.2.0.PECMIXM_20190302.0000.00_9.0_global

sleep 1;

fastboot $* getvar product 2>&1 | grep "^product: *equuleus"
if [ $? -ne 0  ] ; then echo "Missmatching image and device"; exit 1; fi

#CURRENT_ANTI_VER=1
#ver=`fastboot $* getvar anti 2>&1 | grep -o "anti: \K[0-9]+"`
#if [ -z "$ver" ]; then ver=0; fi
#if [ $ver -gt $CURRENT_ANTI_VER ]; then echo "current device antirollback version is greater then this pakcage"; exit 1; fi

fastboot $* erase boot
if [ $? -ne 0 ] ; then echo "Erase boot error"; exit 1; fi
	
fastboot $* flash crclist "$imagesDir"crclist.txt
if [ $? -ne 0 ] ; then echo "Flash crclist error"; exit 1; fi
sleep 1;
	
fastboot $* flash sparsecrclist "$imagesDir"sparsecrclist.txt
if [ $? -ne 0 ] ; then echo "Flash sparsecrclist error"; exit 1; fi
sleep 1;

fastboot $* flash xbl_ab "$imagesDir"xbl.img
if [ $? -ne 0 ] ; then echo "Flash xbl_ab error"; exit 1; fi
sleep 1;

fastboot $* flash xbl_config_ab "$imagesDir"xbl_config.img
if [ $? -ne 0 ] ; then echo "Flash xbl_config_ab error"; exit 1; fi
sleep 1;

fastboot $* flash abl_ab "$imagesDir"abl.img
if [ $? -ne 0 ] ; then echo "Flash abl_ab error"; exit 1; fi
sleep 1;

fastboot $* flash tz_ab "$imagesDir"tz.img
if [ $? -ne 0 ] ; then echo "Flash tz_ab error"; exit 1; fi
sleep 1;

fastboot $* flash hyp_ab "$imagesDir"hyp.img
if [ $? -ne 0 ] ; then echo "Flash hyp_ab error"; exit 1; fi
sleep 1;

fastboot $* flash devcfg_ab "$imagesDir"devcfg.img
if [ $? -ne 0 ] ; then echo "Flash devcfg_ab error"; exit 1; fi
sleep 1;

fastboot $* flash storsec_ab "$imagesDir"storsec.img
if [ $? -ne 0 ] ; then echo "Flash storsec_ab error"; exit 1; fi
sleep 1;

fastboot $* flash bluetooth "$imagesDir"bluetooth.img
if [ $? -ne 0 ] ; then echo "Flash bluetooth error"; exit 1; fi
sleep 1;

fastboot $* flash cmnlib_ab "$imagesDir"cmnlib.img
if [ $? -ne 0 ] ; then echo "Flash cmnlib_ab error"; exit 1; fi
sleep 1;

fastboot $* flash cmnlib64_ab "$imagesDir"cmnlib64.img
if [ $? -ne 0 ] ; then echo "Flash cmnlib64_ab error"; exit 1; fi
sleep 1;

fastboot $* flash modem "$imagesDir"modem.img
if [ $? -ne 0 ] ; then echo "Flash modem error"; exit 1; fi
sleep 1;

fastboot $* flash dsp "$imagesDir"dsp.img
if [ $? -ne 0 ] ; then echo "Flash dsp error"; exit 1; fi
sleep 1;
fastboot $* flash keymaster_ab "$imagesDir"keymaster.img
if [ $? -ne 0 ] ; then echo "Flash keymaster_ab error"; exit 1; fi
sleep 1;

fastboot $* flash logo "$imagesDir"logo.img
if [ $? -ne 0 ] ; then echo "Flash logo error"; exit 1; fi
sleep 1;

fastboot $* flash misc "$imagesDir"misc.img
if [ $? -ne 0 ] ; then echo "Flash misc error"; exit 1; fi
sleep 1;

fastboot $* flash aop_ab "$imagesDir"aop.img
if [ $? -ne 0 ] ; then echo "Flash aop_ab error"; exit 1; fi
sleep 1;

fastboot $* flash qupfw_ab "$imagesDir"qupfw.img
if [ $? -ne 0 ] ; then echo "Flash qupfw_ab error"; exit 1; fi
sleep 1;

fastboot $* flash ImageFv "$imagesDir"imagefv.elf
if [ $? -ne 0 ] ; then echo "Flash ImageFv error"; exit 1; fi
sleep 1;

fastboot $* -S 200M flash vendor "$imagesDir"vendor.img
if [ $? -ne 0 ] ; then echo "Flash vendor error"; exit 1; fi
sleep 1;

fastboot $* -S 200M flash system "$imagesDir"system.img
if [ $? -ne 0 ] ; then echo "Flash system error"; exit 1; fi
sleep 1;

fastboot $* -S 200M flash userdata "$imagesDir"userdata.img
if [ $? -ne 0 ] ; then echo "Flash userdata error"; exit 1; fi
sleep 1;

fastboot $* flash recovery "$imagesDir"recovery.img
if [ $? -ne 0 ] ; then echo "Flash recovery error"; exit 1; fi
sleep 1;
	
fastboot $* flash cache "$imagesDir"cache.img
if [ $? -ne 0 ] ; then echo "Flash cache error"; exit 1; fi
sleep 1;
	
fastboot $* erase sec
if [ $? -ne 0 ] ; then echo "Erase sec error"; exit 1; fi
sleep 1;
	
fastboot $* -S 200M flash cust "$imagesDir"cust.img
if [ $? -ne 0 ] ; then echo "Flash cust error"; exit 1; fi
sleep 1;

fastboot $* flash boot "$imagesDir"boot.img
if [ $? -ne 0 ] ; then echo "Flash boot error"; exit 1; fi
sleep 1;

fastboot $* reboot
if [ $? -ne 0 ] ; then echo "Reboot error"; exit 1; fi

rm -rf /Users/fanix/Desktop/M8PRO/MIUI/V10.2.2.0.PECMIXM/fastboot/images/
