.class final Lnet/nend/android/NendAdController;
.super Ljava/lang/Object;
.source "NendAdController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/NendAdController$ControllerHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_CODE:I = 0x2ce


# instance fields
.field private final mAd:Lnet/nend/android/Ad;

.field private final mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mReloadable:Z


# direct methods
.method constructor <init>(Lnet/nend/android/Ad;)V
    .locals 2
    .param p1, "ad"    # Lnet/nend/android/Ad;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/nend/android/NendAdController;->mHasWindowFocus:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/nend/android/NendAdController;->mReloadable:Z

    .line 62
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Ad object is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lnet/nend/android/NendAdController;->mAd:Lnet/nend/android/Ad;

    .line 68
    new-instance v0, Lnet/nend/android/NendAdController$ControllerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/nend/android/NendAdController$ControllerHandler;-><init>(Landroid/os/Looper;Lnet/nend/android/Ad;)V

    iput-object v0, p0, Lnet/nend/android/NendAdController;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method cancelRequest()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lnet/nend/android/NendAdController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2ce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lnet/nend/android/NendAdController;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0}, Lnet/nend/android/Ad;->cancelRequest()V

    .line 123
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lnet/nend/android/NendAdController;->mHasWindowFocus:Z

    .line 136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAdController;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0}, Lnet/nend/android/Ad;->isRequestable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lnet/nend/android/NendAdController;->reloadAd()Z

    .line 140
    :cond_0
    return-void
.end method

.method reloadAd()Z
    .locals 4

    .prologue
    const/16 v3, 0x2ce

    .line 109
    iget-boolean v0, p0, Lnet/nend/android/NendAdController;->mReloadable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/nend/android/NendAdController;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAdController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lnet/nend/android/NendAdController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/nend/android/NendAdController;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v1}, Lnet/nend/android/Ad;->getReloadIntervalInSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestAd()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/nend/android/NendAdController;->cancelRequest()V

    .line 91
    iget-object v0, p0, Lnet/nend/android/NendAdController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2ce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method

.method setReloadable(Z)V
    .locals 0
    .param p1, "reloadable"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lnet/nend/android/NendAdController;->mReloadable:Z

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lnet/nend/android/NendAdController;->reloadAd()Z

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lnet/nend/android/NendAdController;->cancelRequest()V

    goto :goto_0
.end method
