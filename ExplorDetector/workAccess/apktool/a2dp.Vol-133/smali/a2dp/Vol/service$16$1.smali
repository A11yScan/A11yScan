.class La2dp/Vol/service$16$1;
.super Landroid/os/CountDownTimer;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/service$16;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/service$16;


# direct methods
.method constructor <init>(La2dp/Vol/service$16;JJ)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/service$16;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1648
    iput-object p1, p0, La2dp/Vol/service$16$1;->this$1:La2dp/Vol/service$16;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    iget-object v1, p0, La2dp/Vol/service$16$1;->this$1:La2dp/Vol/service$16;

    iget-object v1, v1, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-virtual {v1, v0}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V

    .line 1664
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x0

    .line 1668
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1670
    .local v1, "downIntent2":Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x7e

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1672
    .local v0, "downEvent2":Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1673
    iget-object v2, p0, La2dp/Vol/service$16$1;->this$1:La2dp/Vol/service$16;

    iget-object v2, v2, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v1, v4}, La2dp/Vol/service;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1675
    return-void
.end method
