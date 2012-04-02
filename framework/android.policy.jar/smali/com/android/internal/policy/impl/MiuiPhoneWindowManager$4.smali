.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 6
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 351
    .local v2, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 380
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v2, 0x1

    .line 355
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 376
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    goto :goto_0

    .line 358
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    goto :goto_1

    .line 376
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 378
    :catchall_1
    move-exception v3

    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v3

    .line 366
    :pswitch_1
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 368
    iget v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 369
    .local v0, distanceX:F
    iget v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 370
    .local v1, distanceY:F
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v5, 0x1

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
