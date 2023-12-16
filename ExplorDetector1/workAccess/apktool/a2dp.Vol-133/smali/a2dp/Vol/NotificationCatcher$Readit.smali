.class La2dp/Vol/NotificationCatcher$Readit;
.super Landroid/os/AsyncTask;
.source "NotificationCatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/NotificationCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Readit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/NotificationCatcher;


# direct methods
.method private constructor <init>(La2dp/Vol/NotificationCatcher;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La2dp/Vol/NotificationCatcher;La2dp/Vol/NotificationCatcher$1;)V
    .locals 0
    .param p1, "x0"    # La2dp/Vol/NotificationCatcher;
    .param p2, "x1"    # La2dp/Vol/NotificationCatcher$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, La2dp/Vol/NotificationCatcher$Readit;-><init>(La2dp/Vol/NotificationCatcher;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;
    .locals 34
    .param p1, "params"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 90
    const/4 v8, 0x0

    .line 92
    .local v8, "connected":I
    :try_start_0
    sget-object v29, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 93
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ge v8, v0, :cond_0

    const/16 v29, 0x0

    .line 211
    :goto_0
    return-object v29

    .line 94
    :catch_0
    move-exception v9

    .line 96
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v29, 0x0

    aget-object v22, p1, v29

    .line 101
    .local v22, "sbn":Landroid/service/notification/StatusBarNotification;
    const/16 v25, 0x0

    .line 102
    .local v25, "test":Z
    invoke-static {}, La2dp/Vol/NotificationCatcher;->access$100()[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    aget-object v19, v30, v29

    .line 103
    .local v19, "p":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    const/16 v25, 0x1

    .line 102
    :cond_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 106
    .end local v19    # "p":Ljava/lang/String;
    :cond_2
    if-eqz v25, :cond_b

    .line 107
    const-string v23, ""

    .line 109
    .local v23, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, La2dp/Vol/NotificationCatcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 110
    .local v21, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 112
    .local v20, "pack":Ljava/lang/String;
    const/16 v29, 0x0

    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 117
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v5, :cond_3

    .line 118
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v29

    :goto_3
    check-cast v29, Ljava/lang/String;

    move-object/from16 v6, v29

    check-cast v6, Ljava/lang/String;

    .line 123
    .local v6, "appName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    .line 124
    .local v18, "notification":Landroid/app/Notification;
    if-nez v18, :cond_4

    const/16 v29, 0x0

    goto :goto_0

    .line 113
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v18    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v10

    .line 115
    .local v10, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .end local v10    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object/from16 v29, v20

    .line 118
    goto :goto_3

    .line 126
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v18    # "notification":Landroid/app/Notification;
    :cond_4
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 129
    .local v28, "when":Ljava/lang/Long;
    new-instance v14, La2dp/Vol/NotificationCatcher$notItem;

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-direct {v14, v0, v1, v2}, La2dp/Vol/NotificationCatcher$notItem;-><init>(La2dp/Vol/NotificationCatcher;Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    .local v14, "item":La2dp/Vol/NotificationCatcher$notItem;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 131
    .local v15, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<La2dp/Vol/NotificationCatcher$notItem;>;"
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 132
    .local v12, "found":Ljava/lang/Boolean;
    :cond_5
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 133
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La2dp/Vol/NotificationCatcher$notItem;

    .line 134
    .local v11, "element":La2dp/Vol/NotificationCatcher$notItem;
    invoke-virtual {v11}, La2dp/Vol/NotificationCatcher$notItem;->getNot()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 135
    invoke-virtual {v11}, La2dp/Vol/NotificationCatcher$notItem;->getNottime()Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    add-long v30, v30, v32

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    cmp-long v29, v30, v32

    if-gez v29, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_4

    .line 138
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 143
    .end local v11    # "element":La2dp/Vol/NotificationCatcher$notItem;
    :cond_7
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_8

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_8
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 151
    const-string v27, ""

    .line 152
    .local v27, "ticker":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 153
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    .line 155
    :cond_9
    const-string v24, ""

    .line 158
    .local v24, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->apps1:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 159
    if-eqz v27, :cond_c

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 203
    :cond_a
    if-lez v8, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_b

    .line 204
    const-string v4, "a2dp.vol.service.MESSAGE"

    .line 205
    .local v4, "IRun":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v13, "intent":Landroid/content/Intent;
    const-string v29, "a2dp.vol.service.MESSAGE"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v29, "message"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/NotificationCatcher$Readit;->this$0:La2dp/Vol/NotificationCatcher;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, La2dp/Vol/NotificationCatcher;->access$200(La2dp/Vol/NotificationCatcher;)La2dp/Vol/MyApplication;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v4    # "IRun":Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v12    # "found":Ljava/lang/Boolean;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "item":La2dp/Vol/NotificationCatcher$notItem;
    .end local v15    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<La2dp/Vol/NotificationCatcher$notItem;>;"
    .end local v18    # "notification":Landroid/app/Notification;
    .end local v20    # "pack":Ljava/lang/String;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "str":Ljava/lang/String;
    .end local v24    # "temp":Ljava/lang/String;
    .end local v27    # "ticker":Ljava/lang/String;
    .end local v28    # "when":Ljava/lang/Long;
    :cond_b
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 160
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v12    # "found":Ljava/lang/Boolean;
    .restart local v14    # "item":La2dp/Vol/NotificationCatcher$notItem;
    .restart local v15    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<La2dp/Vol/NotificationCatcher$notItem;>;"
    .restart local v18    # "notification":Landroid/app/Notification;
    .restart local v20    # "pack":Ljava/lang/String;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v24    # "temp":Ljava/lang/String;
    .restart local v27    # "ticker":Ljava/lang/String;
    .restart local v28    # "when":Ljava/lang/Long;
    :cond_c
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 165
    :cond_d
    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 166
    .local v7, "bun":Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_f

    .line 167
    const-string v29, "android.textLines"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 168
    .local v17, "lines":[Ljava/lang/CharSequence;
    if-eqz v17, :cond_f

    .line 169
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_f

    .line 170
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    aget-object v16, v17, v29

    .line 171
    .local v16, "line":Ljava/lang/CharSequence;
    if-eqz v16, :cond_e

    .line 172
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    .line 170
    :cond_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 179
    .end local v16    # "line":Ljava/lang/CharSequence;
    .end local v17    # "lines":[Ljava/lang/CharSequence;
    :cond_f
    const-string v26, ""

    .line 180
    .local v26, "text":Ljava/lang/String;
    const-string v29, "android.text"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_10

    .line 181
    const-string v29, "android.text"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_10

    .line 182
    const-string v29, "android.text"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    .line 186
    :cond_10
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_14

    .line 187
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 188
    :cond_11
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 198
    :cond_12
    :goto_6
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x0

    goto/16 :goto_0

    .line 190
    :cond_13
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 191
    :cond_14
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_12

    .line 192
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_16

    .line 193
    :cond_15
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 195
    :cond_16
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, La2dp/Vol/NotificationCatcher$Readit;->doInBackground([Landroid/service/notification/StatusBarNotification;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
