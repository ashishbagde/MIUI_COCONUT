.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;
    }
.end annotation


# static fields
.field private static sBackLongPressWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

.field mBackLongPressed:Z

.field private mBinder:Landroid/os/Binder;

.field mCameraKeyWakeScreen:Z

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field private mIsStatusBarVisibleInFullscreen:Z

.field private mMenuPressed:Z

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field mScreenButtonsDisabled:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenshotTrigger:Z

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarInputChannel:Landroid/view/InputChannel;

.field private final mStatusBarInputHandler:Landroid/view/InputHandler;

.field private mTorchEnabled:Z

.field private mVolumeDownPressed:Z

.field private mVolumeUpPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    .line 411
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.fmradio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 314
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 316
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputHandler:Landroid/view/InputHandler;

    .line 383
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 408
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    .line 515
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    return v0
.end method

.method private isEnableKeyguardTorch()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMaxBacklightBrightness()V
    .locals 2

    .prologue
    .line 275
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 277
    .local v0, power:Landroid/os/IPowerManager;
    const/16 v1, 0xff

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p1, :cond_1

    const/high16 v1, 0x2000

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v5, "android"

    invoke-interface {v3, v1, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 334
    if-eqz p1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 341
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 325
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 338
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_2
.end method

.method private setTorch(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "net.cactii.flash2.EXTRA_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method


# virtual methods
.method public finishAnimationLw()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 284
    .local v1, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v2, :cond_0

    .line 285
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 287
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishAnimationLw()I

    move-result v0

    .line 288
    .local v0, result:I
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v2, :cond_1

    .line 292
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_1

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v3, "StatusBarView"

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    .line 296
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputHandler:Landroid/view/InputHandler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_1
    :goto_0
    return v0

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-static {v2}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 306
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 5
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V

    .line 69
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 70
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 72
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 96
    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 97
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 11
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 120
    .local v3, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 121
    .local v5, repeatCount:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 127
    .local v1, down:Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v7, :cond_0

    .line 128
    sparse-switch v3, :sswitch_data_0

    .line 137
    :cond_0
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 138
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 139
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v7, :cond_3

    .line 140
    rem-int/lit8 v7, v5, 0xa

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 141
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 147
    :cond_1
    :goto_1
    const-wide/16 v7, -0x1

    .line 224
    :goto_2
    return-wide v7

    .line 121
    .end local v1           #down:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v1       #down:Z
    :sswitch_0
    const-wide/16 v7, -0x1

    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1

    .line 145
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    goto :goto_1

    .line 149
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v7, :cond_5

    .line 150
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    .line 202
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-eqz v7, :cond_10

    .line 203
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    if-nez v7, :cond_6

    .line 204
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 205
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_6
    const-wide/16 v7, -0x1

    goto :goto_2

    .line 153
    :cond_7
    const/4 v7, 0x4

    if-ne v3, v7, :cond_d

    .line 154
    if-eqz v1, :cond_c

    .line 155
    if-nez v5, :cond_a

    .line 156
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    .line 159
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 160
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v0, :cond_8

    sget-object v7, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sBackLongPressWhiteList:Ljava/util/HashSet;

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_8

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-le v7, v8, :cond_9

    :cond_8
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_a

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7cf

    if-gt v7, v8, :cond_a

    .line 169
    :cond_9
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "back_key_long_press_timeout"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    .line 172
    .local v6, timeout:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v7, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->setTarget(Landroid/view/WindowManagerPolicy$WindowState;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_5
    if-lez v6, :cond_a

    .line 184
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #timeout:I
    :cond_a
    :goto_6
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    if-eqz v7, :cond_5

    const-wide/16 v7, -0x1

    goto/16 :goto_2

    .line 159
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 173
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 176
    .restart local v6       #timeout:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "back_key_long_press_timeout"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 190
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v6           #timeout:I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 194
    :cond_d
    const/16 v7, 0x52

    if-ne v3, v7, :cond_e

    .line 195
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    goto/16 :goto_3

    .line 196
    :cond_e
    const/16 v7, 0x18

    if-ne v3, v7, :cond_f

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    goto/16 :goto_3

    .line 198
    :cond_f
    const/16 v7, 0x19

    if-ne v3, v7, :cond_5

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    goto/16 :goto_3

    .line 209
    :cond_10
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    if-eqz v7, :cond_11

    .line 210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setMaxBacklightBrightness()V

    .line 213
    :cond_11
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 215
    .local v4, lastScreenshotTriggered:Z
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-nez v7, :cond_13

    .line 216
    :cond_12
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 219
    :cond_13
    const/16 v7, 0x19

    if-ne v3, v7, :cond_14

    if-eqz v4, :cond_14

    .line 221
    const-wide/16 v7, -0x1

    goto/16 :goto_2

    .line 224
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v7

    goto/16 :goto_2

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 8
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 230
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    .line 231
    .local v0, down:Z
    :goto_0
    const/high16 v5, 0x100

    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    .line 233
    .local v1, isInjected:Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v5, :cond_0

    .line 234
    sparse-switch v2, :sswitch_data_0

    .line 255
    :cond_0
    if-nez p3, :cond_1

    if-eqz v1, :cond_6

    .line 256
    :cond_1
    if-eqz p3, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v3

    .line 260
    .local v3, keyguardActive:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_6

    if-eqz v0, :cond_6

    .line 261
    const/4 v4, 0x4

    .line 265
    .end local v3           #keyguardActive:Z
    :cond_2
    :goto_3
    :sswitch_0
    return v4

    .end local v0           #down:Z
    .end local v1           #isInjected:Z
    :cond_3
    move v0, v4

    .line 230
    goto :goto_0

    .restart local v0       #down:Z
    :cond_4
    move v1, v4

    .line 231
    goto :goto_1

    .line 236
    .restart local v1       #isInjected:Z
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    goto :goto_3

    .line 243
    :sswitch_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-eqz v5, :cond_0

    .line 244
    if-nez v0, :cond_2

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->interceptPowerKeyUp(Z)Z

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 256
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    goto :goto_2

    .line 265
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v4

    goto :goto_3

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x1a -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.UNLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 105
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .parameter "why"

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 271
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 272
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 115
    :cond_0
    return-void
.end method
