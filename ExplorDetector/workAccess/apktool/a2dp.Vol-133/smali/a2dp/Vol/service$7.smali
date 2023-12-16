.class La2dp/Vol/service$7;
.super Landroid/os/CountDownTimer;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/service;->DoConnected(La2dp/Vol/btDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/service;

.field final synthetic val$vol:I


# direct methods
.method constructor <init>(La2dp/Vol/service;JJI)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 687
    iput-object p1, p0, La2dp/Vol/service$7;->this$0:La2dp/Vol/service;

    iput p6, p0, La2dp/Vol/service$7;->val$vol:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 691
    iget v0, p0, La2dp/Vol/service$7;->val$vol:I

    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v1

    invoke-static {v0, v1}, La2dp/Vol/service;->setVolume(ILandroid/content/Context;)V

    .line 692
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 698
    return-void
.end method
