.class final La2dp/Vol/service$10;
.super Landroid/os/CountDownTimer;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/service;->setVolume(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$minputVol:I


# direct methods
.method constructor <init>(JJI)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J

    .prologue
    .line 994
    iput p5, p0, La2dp/Vol/service$10;->val$minputVol:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "ui":I
    invoke-static {}, La2dp/Vol/service;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1001
    :goto_0
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, La2dp/Vol/service$10;->val$minputVol:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1003
    return-void

    .line 1000
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v5, 0x3

    .line 1007
    const/4 v2, 0x0

    .line 1008
    .local v2, "ui":I
    invoke-static {}, La2dp/Vol/service;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 1010
    :goto_0
    sget-object v3, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1011
    .local v0, "cvol":I
    move v1, v0

    .line 1012
    .local v1, "newvol":I
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, La2dp/Vol/service$10;->val$minputVol:I

    if-ge v3, v4, :cond_0

    .line 1013
    add-int/lit8 v1, v1, 0x1

    .line 1014
    :cond_0
    sget-object v3, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1016
    return-void

    .line 1009
    .end local v0    # "cvol":I
    .end local v1    # "newvol":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
