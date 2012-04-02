.class public Lmiui/provider/ExtraSettings$Secure;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String; = null

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_STATE:Ljava/lang/String; = "screen_buttons_state"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field private static sStorageThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 560
    const-string/jumbo v0, "mobile_download_file_size_prompt_popup_enabled"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String;

    .line 562
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "privacy_mode_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v0, v2

    .line 531
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 532
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 536
    :goto_1
    return-object v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v3

    .line 529
    goto :goto_0

    .line 536
    .restart local v0       #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getStorageThreshold(Landroid/content/ContentResolver;)J
    .locals 6
    .parameter "resolver"

    .prologue
    .line 565
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 566
    const-string/jumbo v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 571
    .local v1, value:I
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    sput-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 574
    .end local v0           #stats:Landroid/os/StatFs;
    .end local v1           #value:I
    :cond_0
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-wide v2
.end method
