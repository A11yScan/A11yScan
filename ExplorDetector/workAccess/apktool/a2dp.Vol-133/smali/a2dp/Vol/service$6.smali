.class La2dp/Vol/service$6;
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

.field final synthetic val$vol1:I


# direct methods
.method constructor <init>(La2dp/Vol/service;JJI)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 667
    iput-object p1, p0, La2dp/Vol/service$6;->this$0:La2dp/Vol/service;

    iput p6, p0, La2dp/Vol/service$6;->val$vol1:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 671
    iget v0, p0, La2dp/Vol/service$6;->val$vol1:I

    invoke-static {v0}, La2dp/Vol/service;->setPVolume(I)I

    .line 672
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 678
    return-void
.end method
