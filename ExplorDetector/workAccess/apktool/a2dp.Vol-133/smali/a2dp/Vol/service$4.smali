.class La2dp/Vol/service$4;
.super Landroid/content/BroadcastReceiver;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/service;


# direct methods
.method constructor <init>(La2dp/Vol/service;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;

    .prologue
    .line 472
    iput-object p1, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 476
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 477
    .local v2, "state":I
    const/4 v0, 0x0

    .line 479
    .local v0, "bt2":La2dp/Vol/btDevice;
    :try_start_0
    iget-object v3, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-static {v3}, La2dp/Vol/service;->access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    const-string v3, "3"

    invoke-virtual {v0}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    if-nez v2, :cond_1

    sget-object v3, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 486
    iget-object v3, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-static {v3, v5}, La2dp/Vol/service;->access$1402(La2dp/Vol/service;Z)Z

    .line 487
    iget-object v3, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-virtual {v3, v0}, La2dp/Vol/service;->DoDisconnected(La2dp/Vol/btDevice;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne v2, v5, :cond_0

    .line 489
    iget-object v3, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-static {v3, v5}, La2dp/Vol/service;->access$1502(La2dp/Vol/service;Z)Z

    .line 490
    iget-object v3, p0, La2dp/Vol/service$4;->this$0:La2dp/Vol/service;

    invoke-virtual {v3, v0}, La2dp/Vol/service;->DoConnected(La2dp/Vol/btDevice;)V

    goto :goto_0
.end method
