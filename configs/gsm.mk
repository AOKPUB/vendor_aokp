# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/aokpub/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
<<<<<<< HEAD
    Stk 
=======
    Stk \
    CellBroadcastReceiver
>>>>>>> f3dddaa... Add CellBroadcastReceiver

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1
