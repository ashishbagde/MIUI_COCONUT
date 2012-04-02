.class public Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "MiuiLockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;,
        Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
    }
.end annotation


# instance fields
.field private mBackDown:Z

.field private mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mTorchCover:Landroid/widget/ImageView;

.field mTorchEnabled:Ljava/lang/Boolean;

.field private mTorchStateObserver:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 1
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchEnabled:Ljava/lang/Boolean;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    return-object v0
.end method

.method protected createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;

    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method protected createLockScreen()Landroid/view/View;
    .locals 8

    .prologue
    .line 84
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->hasAwesomeLockscreen()Z

    move-result v6

    .line 85
    .local v6, isAwesomeLockScreen:Z
    const/4 v0, 0x0

    .line 86
    .local v0, lockView:Landroid/view/View;
    const/4 v7, 0x0

    .line 87
    .local v7, lockWallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 88
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/AwesomeLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V

    .line 104
    .restart local v0       #lockView:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #lockView:Landroid/view/View;
    goto :goto_0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 4
    .parameter "unlockMode"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x30a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x18

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 180
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 181
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    .line 197
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 184
    :cond_1
    if-eq v0, v4, :cond_0

    .line 185
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 188
    if-ne v0, v4, :cond_3

    .line 189
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    if-eqz v2, :cond_3

    .line 190
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 195
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateObserver:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateObserver:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->regitster()V

    .line 119
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onAttachedToWindow()V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateObserver:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->unregister()V

    .line 125
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onDetachedFromWindow()V

    .line 126
    return-void
.end method

.method protected recreateLockScreen()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 79
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    .line 80
    return-void
.end method

.method public declared-synchronized updateTorchCover()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 154
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_1

    .line 173
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v1

    .line 152
    goto :goto_0

    .line 156
    .restart local v0       #enable:Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const v2, 0x30200be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchEnabled:Ljava/lang/Boolean;

    .line 167
    if-eqz v0, :cond_3

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    .restart local v0       #enable:Z
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
