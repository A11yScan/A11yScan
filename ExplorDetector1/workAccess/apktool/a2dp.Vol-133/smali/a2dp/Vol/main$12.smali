.class La2dp/Vol/main$12;
.super Landroid/content/BroadcastReceiver;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/main;


# direct methods
.method constructor <init>(La2dp/Vol/main;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/main;

    .prologue
    .line 975
    iput-object p1, p0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context2"    # Landroid/content/Context;
    .param p2, "intent2"    # Landroid/content/Intent;

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v1, v14, La2dp/Vol/main;->carMode:Z

    .line 979
    .local v1, "carModeOld":Z
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v7, v14, La2dp/Vol/main;->homeDock:Z

    .line 980
    .local v7, "homeDockOld":Z
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v6, v14, La2dp/Vol/main;->headsetPlug:Z

    .line 981
    .local v6, "headsetPlugOld":Z
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v13, v14, La2dp/Vol/main;->power:Z

    .line 984
    .local v13, "powerOld":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v15, v15, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v16, "car_mode"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, La2dp/Vol/main;->carMode:Z

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v15, v15, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v16, "home_dock"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, La2dp/Vol/main;->homeDock:Z

    .line 986
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v15, v15, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v16, "headset"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, La2dp/Vol/main;->headsetPlug:Z

    .line 987
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v15, v15, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v16, "power"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, La2dp/Vol/main;->power:Z

    .line 988
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v15, v15, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v16, "enableTTS"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, La2dp/Vol/main;->enableTTS:Z

    .line 989
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v14, v14, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v15, "useLocalStorage"

    const/16 v16, 0x0

    .line 990
    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 991
    .local v12, "local":Z
    if-eqz v12, :cond_7

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    invoke-virtual {v15}, La2dp/Vol/main;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, La2dp/Vol/main;->access$702(La2dp/Vol/main;Ljava/lang/String;)Ljava/lang/String;

    .line 997
    :goto_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    invoke-static {v14}, La2dp/Vol/main;->access$700(La2dp/Vol/main;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    .local v5, "exportDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1000
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v5    # "exportDir":Ljava/io/File;
    .end local v12    # "local":Z
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v14, v14, La2dp/Vol/main;->carMode:Z

    if-nez v14, :cond_4

    :cond_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v14, v14, La2dp/Vol/main;->homeDock:Z

    if-nez v14, :cond_4

    :cond_2
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v14, v14, La2dp/Vol/main;->headsetPlug:Z

    if-nez v14, :cond_4

    :cond_3
    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v14, v14, La2dp/Vol/main;->power:Z

    if-eqz v14, :cond_5

    .line 1009
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    const/4 v15, 0x0

    invoke-static {v14, v15}, La2dp/Vol/main;->access$300(La2dp/Vol/main;I)I

    .line 1011
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-boolean v14, v14, La2dp/Vol/main;->enableTTS:Z

    if-eqz v14, :cond_9

    .line 1014
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1015
    .local v2, "checkIntent":Landroid/content/Intent;
    const-string v14, "android.speech.tts.engine.CHECK_TTS_DATA"

    .line 1016
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    const/4 v15, 0x3

    invoke-virtual {v14, v2, v15}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1023
    .end local v2    # "checkIntent":Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    invoke-virtual {v14}, La2dp/Vol/main;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 1024
    .local v10, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1025
    .local v11, "listenerEnabled":Ljava/lang/Boolean;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1026
    .local v9, "item":Ljava/lang/String;
    const-string v15, "a2dp.Vol"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_3

    .line 994
    .end local v9    # "item":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "listenerEnabled":Ljava/lang/Boolean;
    .restart local v12    # "local":Z
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/A2DPVol"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, La2dp/Vol/main;->access$702(La2dp/Vol/main;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1002
    .end local v12    # "local":Z
    :catch_0
    move-exception v4

    .line 1003
    .local v4, "e2":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1004
    const-string v14, "A2DP_Volume"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1018
    .end local v4    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1019
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1029
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v10    # "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "listenerEnabled":Ljava/lang/Boolean;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    iget-object v14, v14, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v15, "enableGTalk"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_9

    .line 1030
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main$12;->this$0:La2dp/Vol/main;

    invoke-virtual {v14, v8}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V

    .line 1034
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "listenerEnabled":Ljava/lang/Boolean;
    :cond_9
    return-void
.end method
