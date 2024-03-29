.class La2dp/Vol/service$5;
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
    .line 498
    iput-object p1, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 509
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-static {v5}, La2dp/Vol/service;->access$1500(La2dp/Vol/service;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 510
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    const/4 v6, 0x1

    invoke-static {v5, v6}, La2dp/Vol/service;->access$1502(La2dp/Vol/service;Z)Z

    .line 514
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .local v1, "bt":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const/4 v2, 0x0

    .line 524
    .local v2, "bt2":La2dp/Vol/btDevice;
    if-eqz v1, :cond_2

    .line 526
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "addres":Ljava/lang/String;
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-static {v5}, La2dp/Vol/service;->access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;

    move-result-object v5

    invoke-virtual {v5, v0}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 558
    .end local v0    # "addres":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 559
    :cond_0
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    const/4 v6, 0x0

    invoke-static {v5, v6}, La2dp/Vol/service;->access$1502(La2dp/Vol/service;Z)Z

    .line 564
    .end local v1    # "bt":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "bt2":La2dp/Vol/btDevice;
    :cond_1
    :goto_2
    return-void

    .line 516
    :catch_0
    move-exception v4

    .line 517
    .local v4, "e1":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 518
    .restart local v1    # "bt":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v2    # "bt2":La2dp/Vol/btDevice;
    :catch_1
    move-exception v3

    .line 531
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 532
    goto :goto_1

    .line 538
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 540
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-static {v5}, La2dp/Vol/service;->access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v2

    goto :goto_1

    .line 541
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.action.ENTER_DESK_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 543
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-static {v5}, La2dp/Vol/service;->access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v2

    goto :goto_1

    .line 544
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 546
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-static {v5}, La2dp/Vol/service;->access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;

    move-result-object v5

    const-string v6, "4"

    invoke-virtual {v5, v6}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 549
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 551
    :catch_2
    move-exception v3

    .line 553
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 554
    const-string v5, "A2DP_Volume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 561
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, La2dp/Vol/service$5;->this$0:La2dp/Vol/service;

    invoke-virtual {v5, v2}, La2dp/Vol/service;->DoConnected(La2dp/Vol/btDevice;)V

    goto :goto_2
.end method
