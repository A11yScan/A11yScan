.class La2dp/Vol/service$3;
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
    .line 424
    iput-object p1, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 428
    const/16 v6, 0xa

    .line 429
    .local v6, "state1":I
    const/16 v7, 0xd

    .line 430
    .local v7, "state2":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 431
    .local v4, "mBTA":Landroid/bluetooth/BluetoothAdapter;
    const-string v5, ""

    .line 432
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    if-eq v8, v6, :cond_0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    if-ne v8, v7, :cond_9

    .line 434
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    sget-object v8, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 435
    sget-object v8, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v8, v8, v3

    if-eqz v8, :cond_1

    .line 436
    sget-object v8, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v8, v8, v3

    invoke-virtual {v8}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 437
    sget-object v8, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v8, v8, v3

    invoke-virtual {v8}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 438
    sget-object v8, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aput-object v11, v8, v3

    .line 434
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_2
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8}, La2dp/Vol/service;->access$100(La2dp/Vol/service;)V

    .line 442
    const-string v8, ""

    if-eq v5, v8, :cond_6

    .line 443
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8}, La2dp/Vol/service;->access$200(La2dp/Vol/service;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 444
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8, v10, v11}, La2dp/Vol/service;->access$300(La2dp/Vol/service;ZLjava/lang/String;)V

    .line 445
    :cond_3
    invoke-static {}, La2dp/Vol/service;->access$400()Z

    move-result v8

    if-nez v8, :cond_4

    .line 446
    invoke-static {}, La2dp/Vol/service;->access$500()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v9

    invoke-static {v8, v9}, La2dp/Vol/service;->setVolume(ILandroid/content/Context;)V

    .line 447
    :cond_4
    invoke-static {}, La2dp/Vol/service;->access$700()Z

    move-result v8

    if-nez v8, :cond_5

    .line 448
    invoke-static {}, La2dp/Vol/service;->access$800()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, La2dp/Vol/service;->setPVolume(I)I

    .line 449
    :cond_5
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    iget-object v9, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    iget-boolean v9, v9, La2dp/Vol/service;->oldwifistate:Z

    invoke-static {v8, v9}, La2dp/Vol/service;->access$900(La2dp/Vol/service;Z)V

    .line 451
    :cond_6
    sget-boolean v8, La2dp/Vol/service;->mTtsReady:Z

    if-eqz v8, :cond_8

    .line 453
    :try_start_0
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8}, La2dp/Vol/service;->access$1000(La2dp/Vol/service;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 454
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8}, La2dp/Vol/service;->access$000(La2dp/Vol/service;)V

    .line 456
    :cond_7
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v8}, La2dp/Vol/service;->access$1100(La2dp/Vol/service;)Landroid/speech/tts/TextToSpeech;

    move-result-object v8

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 457
    const/4 v8, 0x0

    sput-boolean v8, La2dp/Vol/service;->mTtsReady:Z

    .line 458
    iget-object v8, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    iget-object v9, p0, La2dp/Vol/service$3;->this$0:La2dp/Vol/service;

    invoke-static {v9}, La2dp/Vol/service;->access$1200(La2dp/Vol/service;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_8
    :goto_1
    const-string v0, "a2dp.Vol.main.RELOAD_LIST"

    .line 464
    .local v0, "Ireload":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v2, "itent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v8, "disconnect"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v8

    invoke-virtual {v8, v2}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    .end local v0    # "Ireload":Ljava/lang/String;
    .end local v2    # "itent":Landroid/content/Intent;
    .end local v3    # "j":I
    :cond_9
    return-void

    .line 459
    .restart local v3    # "j":I
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
