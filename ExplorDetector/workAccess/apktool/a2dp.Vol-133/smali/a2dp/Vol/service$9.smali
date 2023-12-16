.class La2dp/Vol/service$9;
.super Landroid/os/CountDownTimer;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/service;->DoDisconnected(La2dp/Vol/btDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/service;

.field final synthetic val$kpackage:Ljava/lang/String;


# direct methods
.method constructor <init>(La2dp/Vol/service;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 808
    iput-object p1, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    iput-object p6, p0, La2dp/Vol/service$9;->val$kpackage:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 811
    sget-object v5, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 814
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v3, "i":Landroid/content/Intent;
    const-string v5, "command"

    const-string v6, "pause"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v5, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    invoke-virtual {v5, v3}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v4, "j":Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    :try_start_0
    iget-object v5, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    invoke-virtual {v5, v4}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 832
    .local v1, "downIntent2":Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v5, 0x56

    invoke-direct {v0, v7, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 835
    .local v0, "downEvent2":Landroid/view/KeyEvent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 837
    iget-object v5, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    invoke-virtual {v5, v1, v8}, La2dp/Vol/service;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 840
    .end local v0    # "downEvent2":Landroid/view/KeyEvent;
    .end local v1    # "downIntent2":Landroid/content/Intent;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "j":Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v5, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    iget-object v6, p0, La2dp/Vol/service$9;->val$kpackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, La2dp/Vol/service;->stopApp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 846
    :goto_1
    return-void

    .line 825
    .restart local v3    # "i":Landroid/content/Intent;
    .restart local v4    # "j":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 841
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "j":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 842
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 843
    const-string v5, "A2DP_Volume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "arg0"    # J

    .prologue
    const/4 v6, 0x0

    .line 851
    sget-object v4, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 854
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 856
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object v4, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    invoke-virtual {v4, v3}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 862
    .local v1, "downIntent2":Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x56

    invoke-direct {v0, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 865
    .local v0, "downEvent2":Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 867
    iget-object v4, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    invoke-virtual {v4, v1, v6}, La2dp/Vol/service;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 871
    .end local v0    # "downEvent2":Landroid/view/KeyEvent;
    .end local v1    # "downIntent2":Landroid/content/Intent;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, La2dp/Vol/service$9;->this$0:La2dp/Vol/service;

    iget-object v5, p0, La2dp/Vol/service$9;->val$kpackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/service;->stopApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v2

    .line 873
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 874
    const-string v4, "A2DP_Volume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
