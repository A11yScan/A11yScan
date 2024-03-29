.class La2dp/Vol/service$15;
.super Landroid/speech/tts/UtteranceProgressListener;
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
    .line 1457
    iput-object p1, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 5
    .param p1, "uttId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1462
    const/4 v1, 0x0

    .line 1463
    .local v1, "result":I
    const-string v2, "A2DP_Vol"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    iget-object v2, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-static {v2}, La2dp/Vol/service;->access$1900(La2dp/Vol/service;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1498
    :goto_0
    if-nez v1, :cond_0

    .line 1499
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v3, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1501
    :cond_0
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 1503
    :cond_1
    const-string v2, "fix_stream"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v3, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1518
    :cond_2
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 1519
    return-void

    .line 1475
    :pswitch_0
    iget-object v2, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-static {v2}, La2dp/Vol/service;->access$1000(La2dp/Vol/service;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1478
    .local v0, "c":Landroid/content/Intent;
    const-string v2, "a2dp.vol.service.CLEAR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 1481
    .end local v0    # "c":Landroid/content/Intent;
    :cond_3
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v3, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1483
    goto :goto_0

    .line 1485
    :pswitch_1
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v3, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1486
    goto :goto_0

    .line 1488
    :pswitch_2
    iget-object v2, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-static {v2}, La2dp/Vol/service;->access$1000(La2dp/Vol/service;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    .restart local v0    # "c":Landroid/content/Intent;
    const-string v2, "a2dp.vol.service.CLEAR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 1494
    .end local v0    # "c":Landroid/content/Intent;
    :cond_4
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v3, p0, La2dp/Vol/service$15;->this$0:La2dp/Vol/service;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    goto :goto_0

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1524
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1529
    return-void
.end method
