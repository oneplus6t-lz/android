#!/bin/bash

PREBUILT_PATH="vendor/oneplus/"

list="
bin
etc
etc/acdbdata/Fluid
etc/acdbdata/Liquid
etc/acdbdata/MTP
etc/cne
etc/cne/wqeclient
etc/data
etc/dpm
etc/dpm/nsrm
etc/drc
etc/firmware
etc/nfc
etc/permissions
etc/sensors
etc/surround_sound
etc/surround_sound_3mic
framework
lib
lib64
lib64/hw
lib/hw
lib/modules
usr/qfipsverify
vendor
vendor/bin
vendor/etc
vendor/etc/RIDL
vendor/etc/scve/textreco/chardecoder
vendor/etc/scve/textreco/worddecoder
vendor/lib
vendor/lib64
vendor/lib64/egl
vendor/lib64/hw
vendor/lib/egl
vendor/lib/hw
vendor/lib/qcdrm/playready/lib
vendor/lib/qcdrm/playready/lib/drm
vendor/lib/qcdrm/playready/lib/mediadrm
vendor/lib/rfsa/adsp
vendor/lib/soundfx
"

for i in ${list}
do
  mkdir -p ${PREBUILT_PATH}${i}
done

bin_list="
adsprpcd
ATFWD-daemon
athdiag
btnvtool
cnd
cnss-daemon
cnss_diag
diag_callback_client
diag_dci_sample
diag_klog
diag_mdlog
diag_qshrink4_daemon
diag_socket_log
diag_uart_log
dpmd
dun-server
energy-awareness
fmconfig
fmfactorytest
fmfactorytestserver
fm_qsoc_patches
ftmdaemon
garden_app
gpsone_daemon
hal_proxy_daemon
hci_qcomm_init
imscmservice
imsdatadaemon
imsqmidaemon
ims_rtp_daemon
ipacm-diag
irsc_util
loc_launcher
lowi-server
mcStarter
mm-pp-daemon
mm-qcamera-daemon
mm-qjpeg-dec-test
mm-qjpeg-enc-test
mm-qomx-idec-test
mm-qomx-ienc-test
mm-vidc-omx-test
msm_irqbalance
myftm
netmgrd
nl_listener
oemwvtest
pktlogconf
PktRspTest
pm-proxy
pm-service
port-bridge
qcom-system-daemon
qfipsverify
qjpeg-dma-test
qmi-framework-tests/check_system_health
qmi-framework-tests/qmi_test_mt_client_init_instance
qmuxd
qseecomd
qseecom_sample_client
qseecom_security_test
radish
rfs_access
rmt_storage
secure_camera_sample_client
secure_ui_sample_client
sensors.qcom
ssr_diag
ssr_setup
StoreKeybox
subsystem_ramdump
test_diag
test_module_pproc
tftp_server
time_daemon
wcnss_filter
wdsdaemon
wfdservice
WifiLogger_app
xtwifi-client
xtwifi-inet-agent
"

for i in ${bin_list}
do
  adb pull /system/bin/${i} ${PREBUILT_PATH}bin/${i}
done

cd ${PREBUILT_PATH}bin
chmod 775 *
cd -

etc_list="
acdbdata/Fluid/Fluid_Bluetooth_cal.acdb
acdbdata/Fluid/Fluid_General_cal.acdb
acdbdata/Fluid/Fluid_Global_cal.acdb
acdbdata/Fluid/Fluid_Handset_cal.acdb
acdbdata/Fluid/Fluid_Hdmi_cal.acdb
acdbdata/Fluid/Fluid_Headset_cal.acdb
acdbdata/Fluid/Fluid_Speaker_cal.acdb
acdbdata/Liquid/Liquid_Bluetooth_cal.acdb
acdbdata/Liquid/Liquid_General_cal.acdb
acdbdata/Liquid/Liquid_Global_cal.acdb
acdbdata/Liquid/Liquid_Handset_cal.acdb
acdbdata/Liquid/Liquid_Hdmi_cal.acdb
acdbdata/Liquid/Liquid_Headset_cal.acdb
acdbdata/Liquid/Liquid_Speaker_cal.acdb
acdbdata/MTP/MTP_Bluetooth_cal.acdb
acdbdata/MTP/MTP_General_cal.acdb
acdbdata/MTP/MTP_Global_cal.acdb
acdbdata/MTP/MTP_Handset_cal.acdb
acdbdata/MTP/MTP_Hdmi_cal.acdb
acdbdata/MTP/MTP_Headset_cal.acdb
acdbdata/MTP/MTP_Speaker_cal.acdb
apns-conf.xml
cacert_location.pem
capability.xml
cne/andsfCne.xml
cne/SwimConfig.xml
cne/wqeclient/profile1.xml
cne/wqeclient/profile2.xml
cne/wqeclient/profile3.xml
cne/wqeclient/profile4.xml
cne/wqeclient/profile5.xml
data/dsi_config.xml
data/netmgr_config.xml
data/qmi_config.xml
dpm/dpm.conf
dpm/nsrm/NsrmConfiguration.xml
drc/drc_cfg_AZ.txt
firmware/a225p5_pm4.fw
firmware/a225_pfp.fw
firmware/a225_pm4.fw
firmware/a300_pfp.fw
firmware/a300_pm4.fw
firmware/a330_pfp.fw
firmware/a330_pm4.fw
firmware/a420_pfp.fw
firmware/a420_pm4.fw
firmware/cpp_firmware_v1_1_1.fw
firmware/cpp_firmware_v1_1_6.fw
firmware/cpp_firmware_v1_2_0.fw
firmware/cpp_firmware_v1_4_0.fw
firmware/cpp_firmware_v1_6_0.fw
firmware/cpp_firmware_v1_8_0.fw
firmware/fingerprints.b00
firmware/fingerprints.b01
firmware/fingerprints.b02
firmware/fingerprints.b03
firmware/fingerprints.mdt
firmware/leia_pfp_470.fw
firmware/leia_pm4_470.fw
firmware/nfc_test.bin
firmware/nvm_tlv_1.3.bin
firmware/nvm_tlv_2.1.bin
firmware/nvm_tlv_3.0.bin
firmware/nvm_tlv_3.2.bin
firmware/nvm_tlv.bin
firmware/rampatch_tlv_1.3.tlv
firmware/rampatch_tlv_2.1.tlv
firmware/rampatch_tlv_3.0.tlv
firmware/rampatch_tlv_3.2.tlv
firmware/rampatch_tlv.img
firmware/Signedrompatch_v20.bin
firmware/Signedrompatch_v21.bin
firmware/Signedrompatch_v24.bin
firmware/Signedrompatch_v30.bin
firmware/venus.b00
firmware/venus.b01
firmware/venus.b02
firmware/venus.b03
firmware/venus.b04
firmware/venus.mbn
firmware/venus.mdt
flp.conf
ftm_test_config
hostapd/hostapd.accept
hostapd/hostapd_default.conf
hostapd/hostapd.deny
izat.conf
lowi.conf
permissions/cneapiclient.xml
permissions/com.android.nfc.helper.xml
permissions/com.qti.dpmframework.xml
permissions/com.qti.location.sdk.xml
permissions/com.qti.snapdragon.sdk.display.xml
permissions/com.qualcomm.location.vzw_library.xml
permissions/com.qualcomm.location.xml
permissions/com.quicinc.cne.xml
permissions/ConnectivityExt.xml
permissions/dpmapi.xml
permissions/embms.xml
permissions/qcnvitems.xml
permissions/qcrilhook.xml
permissions/qti_permissions.xml
permissions/telephonyservice.xml
pp_calib_data_jd35695_1080p_cmd_mode_dsi_panel.xml
sap.conf
sensors/sensor_def_qcomdev.conf
surround_sound_3mic/surround_sound_rec_AZ.cfg
thermal-engine.conf
usf_settings.sh
wfdconfigsink.xml
wfdconfig.xml
wifi/p2p_supplicant_overlay.conf
wifi/wpa_supplicant.conf
wifi/wpa_supplicant_overlay.conf
xtra_root_cert.pem
xtwifi.conf
"

for i in ${etc_list}
do
  adb pull /system/etc/${i} ${PREBUILT_PATH}etc/${i}
done

lib_list="
hw/audio.primary.msm8994.so
hw/copybit.msm8994.so
hw/gps.default.so
hw/sensors.msm8994.so
libantradio.so
libaudioroute.so
libgps.utils.so
libloc_api_v02.so
libloc_core.so
libloc_ds_api.so
libloc_eng.so
libMcClient.so
libMcRegistry.so
libmm-qcamera.so
libOmxAacEnc.so
libOmxAmrEnc.so
libOmxEvrcEnc.so
libOmxQcelp13Enc.so
libparam.so
libqcomfm_jni.so
libqti_performance.so
libstagefright_soft_dtsdec.so
libstagefright_soft_flacdec.so
libtinycompress.so
libtinyxml2.so
libtinyxml.so
libwifi-hal-qcom.so
libwpa_client.so
modules/core_ctl.ko
modules/qca_cld/qca_cld_wlan.ko
modules/ansi_cprng.ko
modules/evbug.ko
modules/gpio_axis.ko
modules/gpio_event.ko
modules/gpio_input.ko
modules/gpio_matrix.ko
modules/gpio_output.ko
modules/gspca_main.ko
modules/mcDrvModule.ko
modules/mcKernelApi.ko
modules/mmc_block_test.ko
modules/mmc_test.ko
modules/msm-buspm-dev.ko
modules/spidev.ko
modules/test-iosched.ko
modules/ufs_test.ko
modules/wil6210.ko
"

for i in ${lib_list}
do
  adb pull /system/lib/${i} ${PREBUILT_PATH}lib/${i}
done

lib64_list="
hw/audio.primary.msm8994.so
hw/copybit.msm8994.so
hw/fingerprint.msm8994.so
hw/gps.default.so
hw/sensors.msm8994.so
hw/sensors.hal.tof.so
libantradio.so
libaudioroute.so
libcom_fingerprints_service.so
libgps.utils.so
libloc_api_v02.so
libloc_core.so
libloc_ds_api.so
libloc_eng.so
libMcClient.so
libMcRegistry.so
libOmxAacEnc.so
libOmxAmrEnc.so
libOmxEvrcEnc.so
libOmxQcelp13Enc.so
libparam.so
libqcomfm_jni.so
libqti_performance.so
libstagefright_soft_flacdec.so
libtinyxml2.so
libtinyxml.so
libwifi-hal-qcom.so
libwpa_client.so
lib_fpc_tac_shared.so
"

for i in ${lib64_list}
do
  adb pull /system/lib64/${i} ${PREBUILT_PATH}lib64/${i}
done

usr_list="
qfipsverify/bootimg.hmac
qfipsverify/qfipsverify.hmac
"

for i in ${usr_list}
do
  adb pull /system/usr/${i} ${PREBUILT_PATH}usr/${i}
done

vendor_list="
bin/audioflacapp
bin/chamomile_provision
bin/fidodaemon
bin/perfd
bin/qti
bin/RIDLClient.exe
bin/sampleauthdaemon
bin/slim_daemon
bin/thermal-engine
etc/perf-profile0.conf
etc/perf-profile1.conf
etc/perf-profile2.conf
etc/perf-profile3.conf
etc/perf-profile4.conf
etc/perf-profile5.conf
etc/RIDL/GoldenLogmask.dmc
etc/RIDL/OTA-Logs.dmc
etc/RIDL/qdss.cfg
etc/RIDL/RIDL.db
etc/scve/textreco/chardecoder/_conf_eng_num_sym_font40_4transd_zscore_morph_.trn2876.trn
etc/scve/textreco/chardecoder/_conf_eng_num_sym_font40_conc2_meshrn__de__1_1__zscore_morph.trn10158.trn
etc/scve/textreco/chardecoder/_conf_eng_num_sym_font40_rbp_data5100_patch500_5x5_24x24_dim727.trn31585.trn
etc/scve/textreco/chardecoder/_eng_font40_4transmeshrnorm6x6_leaflda85_ligature_ext14_c70_sp1lI_newxml3.trn31299.trn
etc/scve/textreco/chardecoder/_numpunc_font40_4transmeshrnorm_leafnum1.trn9614.trn
etc/scve/textreco/chardecoder/_numpunc_font40_conc2_DEFn__BGTouchy6x6n__1_1__morph.trn32025.trn
etc/scve/textreco/chardecoder/_numpunc_parteng_font40_4transmeshr_morph.trn400.trn
etc/scve/textreco/worddecoder/textreco_url_10000_2.bin
lib/libsensor_test.so
lib/libsensor_thresh.so
lib/egl/eglSubDriverAndroid.so
lib/egl/libEGL_adreno.so
lib/egl/libGLESv1_CM_adreno.so
lib/egl/libGLESv2_adreno.so
lib/egl/libq3dtools_adreno.so
lib/egl/libq3dtools_esx.so
lib/egl/libQTapGLES.so
lib/hw/activity_recognition.msm8994.so
lib/hw/flp.default.so
lib/hw/gatekeeper.msm8994.so
lib/hw/keystore.msm8994.so
lib/hw/sound_trigger.primary.msm8994.so
lib/libacdb-fts.so
lib/libacdbloader.so
lib/libacdbmapper.so
lib/libacdbrtac.so
lib/libactuator_rohm_bu63165gwl_camcorder.so
lib/libactuator_rohm_bu63165gwl_camera.so
lib/libactuator_rohm_bu63165gwl.so
lib/libadiertac.so
lib/libadm.so
lib/libadreno_utils.so
lib/libadsprpc.so
lib/libalarmservice_jni.so
lib/libasn1cper.so
lib/libasn1crt.so
lib/libasn1crtx.so
lib/libaudcal.so
lib/libaudioalsa.so
lib/libbccQTI.so
lib/libbtnv.so
lib/libbt-vendor.so
lib/libC2D2.so
lib/libc2d30-a3xx.so
lib/libc2d30-a4xx.so
lib/libCB.so
lib/libChamomilePA.so
lib/libchromatix_ov13860_common.so
lib/libchromatix_ov13860_cpp_hfr.so
lib/libchromatix_ov13860_cpp_liveshot.so
lib/libchromatix_ov13860_cpp_preview.so
lib/libchromatix_ov13860_cpp_snapshot.so
lib/libchromatix_ov13860_cpp_video.so
lib/libchromatix_ov13860_cpp_zsl.so
lib/libchromatix_ov13860_default_video.so
lib/libchromatix_ov13860_hfr.so
lib/libchromatix_ov13860_liveshot.so
lib/libchromatix_ov13860_postproc.so
lib/libchromatix_ov13860_preview.so
lib/libchromatix_ov13860_quarter_size_video.so
lib/libchromatix_ov13860_snapshot.so
lib/libchromatix_ov13860_zsl.so
lib/libchromatix_ov5648_15fps_cpp_liveshot.so
lib/libchromatix_ov5648_15fps_cpp_preview.so
lib/libchromatix_ov5648_15fps_cpp_snapshot.so
lib/libchromatix_ov5648_15fps_cpp_video.so
lib/libchromatix_ov5648_15fps_postproc.so
lib/libchromatix_ov5648_15fps_preview.so
lib/libchromatix_ov5648_15fps_snapshot.so
lib/libchromatix_ov5648_15fps_video.so
lib/libchromatix_ov5648_30fps_cpp_liveshot.so
lib/libchromatix_ov5648_30fps_cpp_preview.so
lib/libchromatix_ov5648_30fps_cpp_snapshot.so
lib/libchromatix_ov5648_30fps_cpp_video.so
lib/libchromatix_ov5648_30fps_postproc.so
lib/libchromatix_ov5648_30fps_preview.so
lib/libchromatix_ov5648_30fps_snapshot.so
lib/libchromatix_ov5648_30fps_video.so
lib/libchromatix_ov5648_common.so
lib/libcneapiclient.so
lib/libcneconn.so
lib/libcneqmiutils.so
lib/libcne.so
lib/libconfigdb.so
lib/libconnctrl.so
lib/libdataitems.so
lib/libdiag.so
lib/libdisp-aba.so
lib/libDivxDrm.so
lib/lib-dplmedia.so
lib/libdpmctmgr.so
lib/libdpmfdmgr.so
lib/libdpmframework.so
lib/libdpmnsrm.so
lib/libdpmtcm.so
lib/libdrc.so
lib/libdrmfs.so
lib/libdrmtime.so
lib/libdsi_netctrl.so
lib/libdsutils.so
lib/libEGL_adreno.so
lib/libExtendedExtractor.so
lib/libextendedremotedisplay.so
lib/libfastcvadsp_stub.so
lib/libfastcvopt.so
lib/libFidoCryptoJNI.so
lib/libFidoCrypto.so
lib/libFIDOKeyProvisioning.so
lib/libFileMux.so
lib/libFlacSwDec.so
lib/libflash_pmic.so
lib/libflp.so
lib/libgdtap.so
lib/libgeofence.so
lib/libgsl.so
lib/libhwdaphal.so
lib/libI420colorconvert.so
lib/libidl.so
lib/libimscamera_jni.so
lib/lib-imscamera.so
lib/lib-imsdpl.so
lib/libimsmedia_jni.so
lib/lib-imsqimf.so
lib/lib-imsrcscmclient.so
lib/lib-ims-rcscmjni.so
lib/lib-imsrcscmservice.so
lib/lib-imsrcscm.so
lib/lib-imsrcs.so
lib/lib-imsSDP.so
lib/lib-imss.so
lib/lib-imsvt.so
lib/lib-imsxml.so
lib/libizat_core.so
lib/libjpegdhw.so
lib/libjpegdmahw.so
lib/libjpegehw.so
lib/liblbs_core.so
lib/liblistenjni.so
lib/liblistensoundmodel2.so
lib/libllvm-glnext.so
lib/libllvm-qcom.so
lib/liblocationservice_glue.so
lib/liblocationservice.so
lib/libloc_ext.so
lib/liblowi_client.so
lib/liblqe.so
lib/libmare-1.0.0.so
lib/libmare-cpu-1.0.0.so
lib/libmdmdetect.so
lib/libmdsprpc.so
lib/libmm-abl-oem.so
lib/libmm-abl.so
lib/libmm-als.so
lib/libmmcamera2_c2d_module.so
lib/libmmcamera2_cpp_module.so
lib/libmmcamera2_frame_algorithm.so
lib/libmmcamera2_iface_modules.so
lib/libmmcamera2_imglib_modules.so
lib/libmmcamera2_isp_modules.so
lib/libmmcamera2_is.so
lib/libmmcamera2_pp_buf_mgr.so
lib/libmmcamera2_pproc_modules.so
lib/libmmcamera2_q3a_core.so
lib/libmmcamera2_sensor_debug.so
lib/libmmcamera2_sensor_modules.so
lib/libmmcamera2_stats_algorithm.so
lib/libmmcamera2_stats_modules.so
lib/libmmcamera2_vpe_module.so
lib/libmmcamera2_wnr_module.so
lib/libmmcamera_cac2_lib.so
lib/libmmcamera_eeprom_util.so
lib/libmmcamera_eztune_module.so
lib/libmmcamera_faceproc.so
lib/libmmcamera_hdr_gb_lib.so
lib/libmmcamera_imglib.so
lib/libmmcamera_isp_abf44.so
lib/libmmcamera_isp_bcc44.so
lib/libmmcamera_isp_be_stats44.so
lib/libmmcamera_isp_bf_scale_stats46.so
lib/libmmcamera_isp_bf_stats44.so
lib/libmmcamera_isp_bg_stats46.so
lib/libmmcamera_isp_bhist_stats44.so
lib/libmmcamera_isp_bpc44.so
lib/libmmcamera_isp_chroma_enhan40.so
lib/libmmcamera_isp_chroma_suppress40.so
lib/libmmcamera_isp_clamp_encoder40.so
lib/libmmcamera_isp_clamp_video40.so
lib/libmmcamera_isp_clamp_viewfinder40.so
lib/libmmcamera_isp_clf46.so
lib/libmmcamera_isp_color_correct46.so
lib/libmmcamera_isp_color_xform_encoder46.so
lib/libmmcamera_isp_color_xform_video46.so
lib/libmmcamera_isp_color_xform_viewfinder46.so
lib/libmmcamera_isp_cs_stats46.so
lib/libmmcamera_isp_demosaic44.so
lib/libmmcamera_isp_demux40.so
lib/libmmcamera_isp_fovcrop_encoder46.so
lib/libmmcamera_isp_fovcrop_video46.so
lib/libmmcamera_isp_fovcrop_viewfinder46.so
lib/libmmcamera_isp_gamma44.so
lib/libmmcamera_isp_gic46.so
lib/libmmcamera_isp_gtm46.so
lib/libmmcamera_isp_hdr46.so
lib/libmmcamera_isp_hdr_be_stats46.so
lib/libmmcamera_isp_ihist_stats46.so
lib/libmmcamera_isp_linearization40.so
lib/libmmcamera_isp_ltm44.so
lib/libmmcamera_isp_mce40.so
lib/libmmcamera_isp_mesh_rolloff44.so
lib/libmmcamera_isp_pedestal_correct46.so
lib/libmmcamera_isp_rs_stats46.so
lib/libmmcamera_isp_scaler_encoder46.so
lib/libmmcamera_isp_scaler_video46.so
lib/libmmcamera_isp_scaler_viewfinder46.so
lib/libmmcamera_isp_sce40.so
lib/libmmcamera_isp_sub_module.so
lib/libmmcamera_isp_wb46.so
lib/libmmcamera_ov13860_eeprom.so
lib/libmmcamera_ov13860.so
lib/libmmcamera_ov5648_eeprom.so
lib/libmmcamera_ov5648.so
lib/libmmcamera_pdafcamif.so
lib/libmmcamera_pdaf.so
lib/libmmcamera_ppbase_module.so
lib/libmmcamera_tintless_algo.so
lib/libmmcamera_tintless_bg_pca_algo.so
lib/libmmcamera_tuning.so
lib/libmmcamera_vpu_module.so
lib/libmm-color-convertor.so
lib/libmm-disp-apis.so
lib/libmm-hdcpmgr.so
lib/libmmhttpstack.so
lib/libmmiipstreammmihttp.so
lib/libmmipl.so
lib/libmmipstreamaal.so
lib/libmmipstreamnetwork.so
lib/libmmipstreamsourcehttp.so
lib/libmmipstreamutils.so
lib/libmmjpeg.so
lib/libmmosal.so
lib/libmmparser.so
lib/libmm-qdcm.so
lib/libmmqjpeg_codec.so
lib/libmmqjpegdma.so
lib/libmmQSM.so
lib/libmmrtpdecoder.so
lib/libmmrtpencoder.so
lib/libmmwfdinterface.so
lib/libmmwfdsinkinterface.so
lib/libmmwfdsrcinterface.so
lib/libnative_audio_latency_jni.so
lib/libnetmgr.so
lib/libNimsWrap.so
lib/liboemcamera.so
lib/libois_rohm_bu63165gwl.so
lib/libOmxAacDec.so
lib/libOmxAmrwbplusDec.so
lib/libomx-dts.so
lib/libOmxEvrcDec.so
lib/libOmxMux.so
lib/libOmxQcelp13Dec.so
lib/libOmxWmaDec.so
lib/libOpenCL.so
lib/libperipheral_client.so
lib/libpvr.so
lib/libQBLAS-0.11.38.so
lib/libqcci_legacy.so
lib/libqcmaputils.so
lib/libqct_resampler.so
lib/libqdi.so
lib/libqdp.so
lib/libqmi_cci.so
lib/libqmi_client_helper.so
lib/libqmi_client_qmux.so
lib/libqmi_common_so.so
lib/libqmi_csi.so
lib/libqmi_encdec.so
lib/libqmiservices.so
lib/libqmi.so
lib/libqomx_jpegdec.so
lib/libqomx_jpegenc_pipe.so
lib/libqomx_jpegenc.so
lib/libQSEEComAPI.so
lib/libqti-at.so
lib/libqti-gt.so
lib/libqti-perfd-client.so
lib/libQtiTether.so
lib/libquipc_os_api.so
lib/librcc.so
lib/lib-rcsimssjni.so
lib/lib-rcsjni.so
lib/libril-qc-qmi-1.so
lib/libril-qc-radioconfig.so
lib/libril-qcril-hook-oem.so
lib/librmp.so
lib/librpmb.so
lib/librs_adreno_sha1.so
lib/librs_adreno.so
lib/libRSDriver_adreno.so
lib/lib-rtpcommon.so
lib/lib-rtpcore.so
lib/lib-rtpdaemoninterface.so
lib/lib-rtpsl.so
lib/libSampleAuthJNI.so
lib/libscale.so
lib/libscve_mv.so
lib/libscve.so
lib/libscve_stub.so
lib/libscveTextRecoPostProcessing.so
lib/libsd_sdk_display.so
lib/lib-sec-disp.so
lib/libSecureSampleAuthClient.so
lib/libSecureSampleAuthJNI.so
lib/libSecureUILib.so
lib/libsecureui.so
lib/libsecureuisvc_jni.so
lib/libsecureui_svcsock.so
lib/libsensor1.so
lib/libsensor_reg.so
lib/libSHIMDivxDrm.so
lib/libsi.so
lib/libslimclient.so
lib/libsmemlog.so
lib/libsregex.so
lib/libsrsprocessing.so
lib/libssd.so
lib/libStDrvInt.so
lib/libsubsystem_control.so
lib/libSubSystemShutdown.so
lib/libsurround_3mic_proc.so
lib/libsystem_health_mon.so
lib/libtar.so
lib/libthermalclient.so
lib/libtime_genoff.so
lib/libTimeService.so
lib/libtzdrmgenprov.so
lib/libulp2.so
lib/libvendorconn.so
lib/libvoice-svc.so
lib/libwfdcommonutils.so
lib/libwfdhdcpcp.so
lib/libwfdmmsink.so
lib/libwfdmmsrc.so
lib/libwfdmmutils.so
lib/libwfdnative.so
lib/libwfdrtsp.so
lib/libwfdservice.so
lib/libwfdsm.so
lib/libwfduibcinterface.so
lib/libwfduibcsinkinterface.so
lib/libwfduibcsink.so
lib/libwfduibcsrcinterface.so
lib/libwfduibcsrc.so
lib/libwms.so
lib/libwqe.so
lib/libxml.so
lib/libxtadapter.so
lib/libxt_native.so
lib/libxtwifi_ulp_adaptor.so
lib/qcdrm/playready/lib/drm/libdrmprplugin_customer.so
lib/qcdrm/playready/lib/libprdrmdecrypt_customer.so
lib/qcdrm/playready/lib/libtzplayready_customer.so
lib/qcdrm/playready/lib/mediadrm/libprmediadrmdecrypt_customer.so
lib/qcdrm/playready/lib/mediadrm/libprmediadrmplugin_customer.so
lib/rfsa/adsp/fastrpc_shell_0
lib/rfsa/adsp/libapps_mem_heap.so
lib/rfsa/adsp/libdspCV_skel.so
lib/rfsa/adsp/libfastcvadsp_skel.so
lib/rfsa/adsp/libfastcvadsp.so
lib/rfsa/adsp/libobjectMattingApp_skel.so
lib/rfsa/adsp/libpanorama_skel.so
lib/rfsa/adsp/libscveBlobDescriptor_skel.so
lib/rfsa/adsp/libscveObjectSegmentation_skel.so
lib/rfsa/adsp/libscveORC_skel.so
lib/rfsa/adsp/libscveT2T_skel.so
lib/rfsa/adsp/libscveTextReco_skel.so
lib/sensors.ssc.so
lib/soundfx/libqcbassboost.so
lib/soundfx/libqcreverb.so
lib/soundfx/libqcvirt.so
lib64/libsensor_thresh.so
lib64/libsensor_user_cal.so
lib64/egl/eglSubDriverAndroid.so
lib64/egl/libEGL_adreno.so
lib64/egl/libGLESv1_CM_adreno.so
lib64/egl/libGLESv2_adreno.so
lib64/egl/libq3dtools_adreno.so
lib64/egl/libq3dtools_esx.so
lib64/egl/libQTapGLES.so
lib64/hw/activity_recognition.msm8994.so
lib64/hw/flp.default.so
lib64/hw/gatekeeper.msm8994.so
lib64/hw/keystore.msm8994.so
lib64/libacdb-fts.so
lib64/libacdbloader.so
lib64/libacdbmapper.so
lib64/libacdbrtac.so
lib64/libadiertac.so
lib64/libadreno_utils.so
lib64/libadsprpc.so
lib64/libalarmservice_jni.so
lib64/libasn1cper.so
lib64/libasn1crt.so
lib64/libasn1crtx.so
lib64/libaudcal.so
lib64/libaudioalsa.so
lib64/libbccQTI.so
lib64/libbtnv.so
lib64/libbt-vendor.so
lib64/libC2D2.so
lib64/libc2d30-a3xx.so
lib64/libc2d30-a4xx.so
lib64/libCB.so
lib64/libChamomilePA.so
lib64/libcneapiclient.so
lib64/libcneconn.so
lib64/libcneqmiutils.so
lib64/libcne.so
lib64/libCommandSvc.so
lib64/libconfigdb.so
lib64/libconnctrl.so
lib64/libdataitems.so
lib64/libdiag.so
lib64/libdisp-aba.so
lib64/libDivxDrm.so
lib64/lib-dplmedia.so
lib64/libdpmctmgr.so
lib64/libdpmfdmgr.so
lib64/libdpmframework.so
lib64/libdpmnsrm.so
lib64/libdpmtcm.so
lib64/libdrmfs.so
lib64/libdrmtime.so
lib64/libdsi_netctrl.so
lib64/libdsutils.so
lib64/libEGL_adreno.so
lib64/libExtendedExtractor.so
lib64/libextendedremotedisplay.so
lib64/libFidoCryptoJNI.so
lib64/libFidoCrypto.so
lib64/libFIDOKeyProvisioning.so
lib64/libFileMux.so
lib64/libFlacSwDec.so
lib64/libflp.so
lib64/libgdtap.so
lib64/libgeofence.so
lib64/libgsl.so
lib64/libhwdaphal.so
lib64/libI420colorconvert.so
lib64/libidl.so
lib64/libimscamera_jni.so
lib64/lib-imscamera.so
lib64/lib-imsdpl.so
lib64/libimsmedia_jni.so
lib64/lib-imsqimf.so
lib64/lib-imsrcscmclient.so
lib64/lib-ims-rcscmjni.so
lib64/lib-imsrcscmservice.so
lib64/lib-imsrcscm.so
lib64/lib-imsrcs.so
lib64/lib-imsSDP.so
lib64/lib-imss.so
lib64/lib-imsvt.so
lib64/lib-imsxml.so
lib64/libizat_core.so
lib64/liblbs_core.so
lib64/liblistenjni.so
lib64/liblistensoundmodel2.so
lib64/libllvm-glnext.so
lib64/libllvm-qcom.so
lib64/liblocationservice_glue.so
lib64/liblocationservice.so
lib64/libloc_ext.so
lib64/libloc_xtra.so
lib64/liblowi_client.so
lib64/liblowi_wifihal.so
lib64/liblqe.so
lib64/libmare-1.0.0.so
lib64/libmare-cpu-1.0.0.so
lib64/libmdmdetect.so
lib64/libmdsprpc.so
lib64/libmm-abl-oem.so
lib64/libmm-abl.so
lib64/libmm-als.so
lib64/libmmcamera2_q3a_core.so
lib64/libmmcamera2_sensor_debug.so
lib64/libmmcamera2_stats_algorithm.so
lib64/libmm-color-convertor.so
lib64/libmm-disp-apis.so
lib64/libmm-hdcpmgr.so
lib64/libmmhttpstack.so
lib64/libmmiipstreammmihttp.so
lib64/libmmipstreamaal.so
lib64/libmmipstreamnetwork.so
lib64/libmmipstreamsourcehttp.so
lib64/libmmipstreamutils.so
lib64/libmmosal.so
lib64/libmmparser.so
lib64/libmm-qdcm.so
lib64/libmmQSM.so
lib64/libmmrtpdecoder.so
lib64/libmmrtpencoder.so
lib64/libmmwfdinterface.so
lib64/libmmwfdsinkinterface.so
lib64/libmmwfdsrcinterface.so
lib64/libnetmgr.so
lib64/libNimsWrap.so
lib64/libOmxAacDec.so
lib64/libOmxAmrwbplusDec.so
lib64/libOmxMux.so
lib64/libOmxWmaDec.so
lib64/libOpenCL.so
lib64/libperipheral_client.so
lib64/libpvr.so
lib64/libQBLAS-0.11.38.so
lib64/libqcci_legacy.so
lib64/libqcmaputils.so
lib64/libqdi.so
lib64/libqdp.so
lib64/libqmi_cci.so
lib64/libqmi_client_helper.so
lib64/libqmi_client_qmux.so
lib64/libqmi_common_so.so
lib64/libqmi_csi.so
lib64/libqmi_encdec.so
lib64/libqmiservices.so
lib64/libqmi.so
lib64/libQSEEComAPI.so
lib64/libqti-at.so
lib64/libqti-gt.so
lib64/libqti-perfd-client.so
lib64/libQtiTether.so
lib64/libquipc_os_api.so
lib64/librcc.so
lib64/lib-rcsimssjni.so
lib64/lib-rcsjni.so
lib64/libril-qc-qmi-1.so
lib64/libril-qc-radioconfig.so
lib64/libril-qcril-hook-oem.so
lib64/librmp.so
lib64/librpmb.so
lib64/librs_adreno_sha1.so
lib64/librs_adreno.so
lib64/libRSDriver_adreno.so
lib64/lib-rtpcommon.so
lib64/lib-rtpcore.so
lib64/lib-rtpdaemoninterface.so
lib64/lib-rtpsl.so
lib64/libSampleAuthJNI.so
lib64/libscale.so
lib64/libsd_sdk_display.so
lib64/lib-sec-disp.so
lib64/libSecureSampleAuthClient.so
lib64/libSecureSampleAuthJNI.so
lib64/libSecureUILib.so
lib64/libsecureui.so
lib64/libsecureuisvc_jni.so
lib64/libsecureui_svcsock.so
lib64/libsensor1.so
lib64/libsensor_reg.so
lib64/libSHIMDivxDrm.so
lib64/libsi.so
lib64/libslimclient.so
lib64/libsmemlog.so
lib64/libssd.so
lib64/libStDrvInt.so
lib64/libsubsystem_control.so
lib64/libsystem_health_mon.so
lib64/libthermalclient.so
lib64/libthermalioctl.so
lib64/libtime_genoff.so
lib64/libTimeService.so
lib64/libtzdrmgenprov.so
lib64/libulp2.so
lib64/libvendorconn.so
lib64/libvoice-svc.so
lib64/libwfdcommonutils.so
lib64/libwfdhdcpcp.so
lib64/libwfdmmsink.so
lib64/libwfdmmsrc.so
lib64/libwfdmmutils.so
lib64/libwfdnative.so
lib64/libwfdrtsp.so
lib64/libwfdservice.so
lib64/libwfdsm.so
lib64/libwfduibcinterface.so
lib64/libwfduibcsinkinterface.so
lib64/libwfduibcsink.so
lib64/libwfduibcsrcinterface.so
lib64/libwfduibcsrc.so
lib64/libwms.so
lib64/libwqe.so
lib64/libxml.so
lib64/libxtadapter.so
lib64/libxt_native.so
lib64/libxtwifi_ulp_adaptor.so
lib64/sensors.ssc.so
qcril.db
"

for i in ${vendor_list}
do
  adb pull /system/vendor/${i} ${PREBUILT_PATH}vendor/${i}
done


framework_list="
cneapiclient.jar
com.qti.dpmframework.jar
com.qti.snapdragon.sdk.display.jar
com.quicinc.cne.jar
ConnectivityExt.jar
dpmapi.jar
embmslibrary.jar
oem-services.jar
qmapbridge.jar
rcsimssettings.jar
rcsservice.jar
tcmclient.jar
"

for i in ${framework_list}
do
  adb pull /system/framework/${i} ${PREBUILT_PATH}framework/${i}
done

# Remove XML head lines for build
FILES=`find ${PREBUILT_PATH}etc/data -type f -name '*.xml'`

for file in ${FILES}
do
    sed -i '1,6d' ${file}
done