.class La2dp/Vol/service$16;
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
    .line 1621
    iput-object p1, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1625
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1626
    .local v7, "state":I
    if-nez v7, :cond_3

    iget-object v0, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-static {v0}, La2dp/Vol/service;->access$1000(La2dp/Vol/service;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1627
    sget-boolean v0, La2dp/Vol/service;->mTtsReady:Z

    if-nez v0, :cond_0

    .line 1628
    iget-object v0, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v2

    iget-object v3, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    iget-object v3, v3, La2dp/Vol/service;->listenerStarted:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, La2dp/Vol/service;->access$1102(La2dp/Vol/service;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    .line 1629
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1631
    .local v6, "myHash2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "utteranceId"

    const-string v1, "fix_stream"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v1, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1634
    const-string v0, "streamType"

    .line 1635
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1634
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    sget-boolean v0, La2dp/Vol/service;->mTtsReady:Z

    if-eqz v0, :cond_1

    .line 1645
    :cond_1
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    iget-object v1, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1646
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 1647
    iget-object v0, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    invoke-static {v0}, La2dp/Vol/service;->access$2000(La2dp/Vol/service;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1648
    new-instance v0, La2dp/Vol/service$16$1;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1770

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, La2dp/Vol/service$16$1;-><init>(La2dp/Vol/service$16;JJ)V

    .line 1677
    invoke-virtual {v0}, La2dp/Vol/service$16$1;->start()Landroid/os/CountDownTimer;

    .line 1680
    :cond_2
    iget-object v0, p0, La2dp/Vol/service$16;->this$0:La2dp/Vol/service;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La2dp/Vol/service;->access$1002(La2dp/Vol/service;Z)Z

    .line 1682
    .end local v6    # "myHash2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method
