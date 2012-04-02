.class public final Lmiui/provider/ExtraSettings$System;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ALWAYS_ENABLE_MMS:Ljava/lang/String; = "always_enable_mms"

.field public static final ANTI_PRIVATE_CALL_ENABLED:Ljava/lang/String; = "anti_private_call"

.field public static final ANTI_STRANGER_CALL_ENABLED:Ljava/lang/String; = "anti_stranger_call"

.field public static final AUTOIP_PREFIX:Ljava/lang/String; = "autoip_prefix"

.field public static final AUTOIP_SWITCH:Ljava/lang/String; = "button_autoip"

.field public static final AUTOIP_SWITCH_DEFAULT:I = 0x0

.field public static final AUTO_COUNTRY_CODE:Ljava/lang/String; = "auto_country_code"

.field public static final AUTO_COUNTRY_CODE_DEFAULT:I = 0x0

.field public static final BACK_KEY_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "back_key_long_press_timeout"

#the value of this static final field might be set in the static constructor
.field public static final BACK_KEY_LONG_PRESS_TIMEOUT_DEFAULT:I = 0x0

.field public static final BATTERY_INDICATOR_STYLE:Ljava/lang/String; = "battery_indicator_style"

.field public static final BATTERY_INDICATOR_STYLE_GRAPHIC:I = 0x0

.field public static final BATTERY_INDICATOR_STYLE_NUMBER:I = 0x1

.field public static final BATTERY_INDICATOR_STYLE_TOP:I = 0x2

.field public static final BATTERY_LEVEL_LOW_CUSTOMIZED:Ljava/lang/String; = "battery_level_low_customized"

.field public static final BLACKLIST_ENABLED:Ljava/lang/String; = "blacklist_enabled"

.field public static final BYPASS_LOCK_SCREEN:Ljava/lang/String; = "bypass_lock_screen"

.field public static final CALL_BREATHING_LIGHT_COLOR:Ljava/lang/String; = "call_breathing_light_color"

#the value of this static final field might be set in the static constructor
.field public static final CALL_BREATHING_LIGHT_COLOR_DEFAULT:I = 0x0

.field public static final CALL_BREATHING_LIGHT_FREQ:Ljava/lang/String; = "call_breathing_light_freq"

#the value of this static final field might be set in the static constructor
.field public static final CALL_BREATHING_LIGHT_FREQ_DEFAULT:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_APP_COMPONENT:Ljava/lang/String; = "camera_key_preferred_action_app_component"

#the value of this static final field might be set in the static constructor
.field public static final CAMERA_KEY_PREFERRED_ACTION_ENABLED:Z = false

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID:Ljava/lang/String; = "camera_key_preferred_action_shortcut_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_CALL:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_HOME:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SCREENSHOT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_SEARCH:I = 0x2

.field public static final CAMERA_KEY_PREFERRED_ACTION_SHORTCUT_ID_WAKE:I = 0x4

.field public static final CAMERA_KEY_PREFERRED_ACTION_TOGGLE_ID:Ljava/lang/String; = "camera_key_preferred_action_toggle_id"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE:Ljava/lang/String; = "camera_key_preferred_action_type"

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_APP:I = 0x3

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_DEFAULT:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_NONE:I = 0x0

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_SHORTCUT:I = 0x1

.field public static final CAMERA_KEY_PREFERRED_ACTION_TYPE_TOGGLE:I = 0x2

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE:Ljava/lang/String; = "check_update_only_wifi_available"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE_DEFAULT:I = 0x1

.field public static final CONFIRM_MIUI_DISCLAIMER:Ljava/lang/String; = "confirm_miui_disclaimer"

.field public static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field public static final CURRENT_AREACODE:Ljava/lang/String; = "current_areacode"

.field public static final DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri; = null

.field public static final DIALER_AUTO_DIALPAD:Ljava/lang/String; = "dialer_auto_dialpad"

.field public static final DIALER_AUTO_DIALPAD_DEFAULT:I = 0x1

.field public static final DIALER_CLICK:Ljava/lang/String; = "dialer_click_setting"

.field public static final DIALER_CLICK_DEFAULT:I = 0x0

.field public static final DIALER_CLICK_DIAL:I = 0x0

.field public static final DIALER_CLICK_VIEW_CONTACT:I = 0x1

.field public static final DIALER_SHOW_CALL_LOG_NUMBER:Ljava/lang/String; = "dialer_show_call_log_number"

.field public static final DOWNLOAD_ONLY_ON_WIFI:Ljava/lang/String; = "download_only_on_wifi"

.field public static final ELECTRON_BEAM_ANIMATION_OFF:Ljava/lang/String; = "electron_beam_animation_off"

.field public static final ELECTRON_BEAM_ANIMATION_ON:Ljava/lang/String; = "electron_beam_animation_on"

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final ENABLE_TELOCATION_DEFAULT:I = 0x1

.field public static final FAKE_MOBILE_OPERATOR_FOR_VENDING:Ljava/lang/String; = "fake_mobile_operator_for_vending"

.field public static final FILTER_STRANGER_SMS_ENABLED:Ljava/lang/String; = "filter_stranger_sms"

.field public static final FIREWALL_CALL_ACT:Ljava/lang/String; = "firewall_call_act"

.field public static final FIREWALL_CALL_ACT_HANGUP:I = 0x0

.field public static final FIREWALL_CALL_ACT_MUTE:I = 0x1

.field public static final FIREWALL_ENABLED:Ljava/lang/String; = "firewall_enabled"

.field public static final FIREWALL_END_TIME:Ljava/lang/String; = "firewall_end_time"

.field public static final FIREWALL_HIDE_CALLLOG:Ljava/lang/String; = "firewall_hide_calllog"

.field public static final FIREWALL_SMS_ACT:Ljava/lang/String; = "firewall_sms_act"

.field public static final FIREWALL_SMS_ACT_DELETE:I = 0x2

.field public static final FIREWALL_SMS_ACT_IGNORE:I = 0x0

.field public static final FIREWALL_SMS_ACT_MUTE:I = 0x1

.field public static final FIREWALL_START_TIME:Ljava/lang/String; = "firewall_start_time"

.field public static final FIREWALL_TIME_LIMIT_ENABLED:Ljava/lang/String; = "firewall_time_limit_enabled"

.field public static final FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final HAPTIC_FEEDBACK_LEVEL:Ljava/lang/String; = "haptic_feedback_level"

.field public static final HAPTIC_FEEDBACK_LEVEL_DEFAULT:I = 0x1

.field public static final HAPTIC_FEEDBACK_LEVEL_MAX:I = 0x2

.field public static final HAPTIC_FEEDBACK_LEVEL_MIN:I = 0x0

.field public static final INCOMING_CALL_LIMIT:Ljava/lang/String; = "incoming_call_limit_setting"

.field public static final INCOMING_CALL_LIMIT_ADDRESSBOOK_CONTACT_ONLY:I = 0x1

.field public static final INCOMING_CALL_LIMIT_BLOCK_ALL:I = 0x3

.field public static final INCOMING_CALL_LIMIT_NO_LIMIT:I = 0x0

.field public static final INCOMING_CALL_LIMIT_STARRED_CONTACT_ONLY:I = 0x2

.field public static final KEEP_CONTACTS_IN_MEMORY:Ljava/lang/String; = "keep_contacts_in_memory"

.field public static final KEEP_CONTACTS_IN_MEMORY_DEFAULT:I = 0x0

.field public static final KEEP_LAUNCHER_IN_MEMORY:Ljava/lang/String; = "keep_launcher_in_memory"

.field public static final KEEP_LAUNCHER_IN_MEMORY_DEFAULT:I = 0x1

.field public static final KEEP_MMS_IN_MEMORY:Ljava/lang/String; = "keep_mms_in_memory"

.field public static final KEEP_MMS_IN_MEMORY_DEFAULT:I = 0x1

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS:Ljava/lang/String; = "keyguard_disable_power_key_long_press"

.field public static final KEYGUARD_DISABLE_POWER_KEY_LONG_PRESS_DEFAULT:I = 0x0

.field public static final LAST_MINUTE_OF_DAY:I = 0x59f

.field public static final MAX_DOWNLOADS:Ljava/lang/String; = "max_downloads"

.field public static final MAX_DOWNLOADS_PER_DOMAIN:Ljava/lang/String; = "max_downloads_per_domain"

.field public static final MIUI_DISCLAIMER_ACCEPT:I = 0x1

.field public static final MIUI_DISCLAIMER_REFUSE:I = 0x0

.field public static final SMS_DELIVERED_SOUND:Ljava/lang/String; = "sms_delivered_sound"

.field public static final SMS_NOTIFICATION_BODY_ENABLED:Ljava/lang/String; = "pref_key_enable_notification_body"

.field public static final SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notification"

.field public static final SMS_RECEIVED_SOUND:Ljava/lang/String; = "sms_received_sound"

.field public static final SMS_WAKE_UP_SCREEN_ENABLED:Ljava/lang/String; = "pref_key_enable_wake_up_screen"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_FULLSCREEN:Ljava/lang/String; = "status_bar_expandable_under_fullscreen"

.field public static final STATUS_BAR_EXPANDABLE_UNDER_KEYGUARD:Ljava/lang/String; = "status_bar_expandable_under_keyguard"

.field public static final STATUS_BAR_NOTIFICATION_FILTER_BLACK_LIST:Ljava/lang/String; = "status_bar_notification_filter_black_list"

.field public static final STATUS_BAR_NOTIFICATION_FILTER_ENABLED:Ljava/lang/String; = "status_bar_notification_filter_enabled"

.field public static final STATUS_BAR_NOTIFICATION_FILTER_ENABLED_DEFAULT:I = 0x1

.field public static final STATUS_BAR_NOTIFICATION_FILTER_MODE:Ljava/lang/String; = "status_bar_notification_filter_mode"

.field public static final STATUS_BAR_NOTIFICATION_FILTER_MODE_BLACK_LIST:I = 0x0

.field public static final STATUS_BAR_NOTIFICATION_FILTER_MODE_DEFAULT:I = 0x1

.field public static final STATUS_BAR_NOTIFICATION_FILTER_MODE_WHITE_LIST:I = 0x1

.field public static final STATUS_BAR_NOTIFICATION_FILTER_WHITE_LIST:Ljava/lang/String; = "status_bar_notification_filter_white_list"

.field public static final STATUS_BAR_STYLE:Ljava/lang/String; = "status_bar_style"

.field public static final STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "status_bar_toggle_list"

.field public static final STATUS_BAR_TOGGLE_PAGE:Ljava/lang/String; = "status_bar_toggle_page"

.field public static final TORCH_STATE:Ljava/lang/String; = "torch_state"

.field public static final TRACKBALL_WAKE_SCREEN:Ljava/lang/String; = "trackball_wake_screen"

.field public static final UPDATE_STABLE_VERSION_ONLY:Ljava/lang/String; = "update_stable_version_only"

.field public static final UPDATE_STABLE_VERSION_ONLY_DEFAULT:I = 0x0

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USER_APPS_KEPT_IN_MEMORY:Ljava/lang/String; = "user_apps_kept_in_memory"

.field public static final USER_APPS_KEPT_IN_MEMORY_DEFAULT:Ljava/lang/String; = ""

.field public static final USER_GUIDE_LOCK_SCREEN_UNLOCK:Ljava/lang/String; = "user_guide_lock_screen_unlock"

.field public static final USER_GUIDE_STATUS_BAR_CALL:Ljava/lang/String; = "user_guide_status_bar_call"

.field public static final USER_GUIDE_STATUS_BAR_NOTIFICATION:Ljava/lang/String; = "user_guide_status_bar_notification"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE:Ljava/lang/String; = "user_guide_status_bar_toggle"

.field public static final USER_GUIDE_STATUS_BAR_TOGGLE_LIST:Ljava/lang/String; = "user_guide_status_bar_toggle_list"

.field public static final VIBRATE_IN_NORMAL:Ljava/lang/String; = "vibrate_in_normal"

.field public static final VIBRATE_MMS_PREF:Ljava/lang/String; = "vibrate_mms"

.field public static final VIBRATE_MMS_PREF_DEFAULT:I = 0x1

.field public static final VIBRATE_NOTIFICATION_PREF:Ljava/lang/String; = "vibrate_notification"

.field public static final VIBRATE_NOTIFICATION_PREF_DEFAULT:I = 0x1

.field public static final VIBRATE_RINGER_PREF:Ljava/lang/String; = "vibrate_ringer"

.field public static final VIBRATE_RINGER_PREF_DEFAULT:I = 0x1

.field public static final VOLUMEKEY_WAKE_SCREEN:Ljava/lang/String; = "volumekey_wake_screen"

.field public static final WHITELIST_ENABLED:Ljava/lang/String; = "whitelist_enabled"

.field public static final XIAOMI_ACCOUNT_MITALK_ENABLE_PROPERTY:Ljava/lang/String; = "persist.sys.mitalk.enable"

.field public static final XIAOMI_ACCOUNT_MITALK_ENABLE_PROPERTY_DEFAULT:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lmiui/provider/ExtraSettings$System;->BACK_KEY_LONG_PRESS_TIMEOUT_DEFAULT:I

    .line 66
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "vision"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmiui/provider/ExtraSettings$System;->CAMERA_KEY_PREFERRED_ACTION_ENABLED:Z

    .line 140
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    .line 147
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    .line 243
    const-string/jumbo v0, "sms_received_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    .line 261
    const-string/jumbo v0, "sms_delivered_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultPref(Ljava/lang/String;)I
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v1, 0x1

    .line 436
    const-string/jumbo v0, "vibrate_mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    return v1

    .line 438
    :cond_1
    const-string/jumbo v0, "vibrate_ringer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const-string/jumbo v0, "vibrate_notification"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "non-support default value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultStatusBarStyle()I
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 488
    const-class v1, Lmiui/provider/ExtraSettings$System;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 489
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 490
    move-object v0, p2

    .line 492
    :cond_0
    monitor-exit v1

    return-object v0

    .line 488
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lmiui/provider/ExtraSettings$System;->getDefaultPref(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
