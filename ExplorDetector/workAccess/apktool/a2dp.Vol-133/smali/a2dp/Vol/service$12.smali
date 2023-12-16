.class La2dp/Vol/service$12;
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
    .line 1305
    iput-object p1, p0, La2dp/Vol/service$12;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, La2dp/Vol/service$12;->this$0:La2dp/Vol/service;

    .line 1313
    invoke-static {v7}, La2dp/Vol/service;->access$1700(La2dp/Vol/service;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_2

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1322
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1324
    const-string v7, "pdus"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1325
    .local v4, "pdusObj":[Ljava/lang/Object;
    array-length v7, v4

    new-array v3, v7, [Landroid/telephony/SmsMessage;

    .line 1326
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_0

    .line 1327
    aget-object v7, v4, v2

    check-cast v7, [B

    check-cast v7, [B

    .line 1328
    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v1, v3, v7

    .line 1333
    .local v1, "currentMessage":Landroid/telephony/SmsMessage;
    iget-object v9, p0, La2dp/Vol/service$12;->this$0:La2dp/Vol/service;

    const v10, 0x7f07006d

    .line 1335
    invoke-virtual {v9, v10}, La2dp/Vol/service;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, La2dp/Vol/service$12;->this$0:La2dp/Vol/service;

    .line 1337
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 1336
    invoke-static {v12, v13}, La2dp/Vol/service;->access$1800(La2dp/Vol/service;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1339
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1335
    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1333
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    .line 1340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1332
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1342
    .end local v1    # "currentMessage":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, La2dp/Vol/service$12;->this$0:La2dp/Vol/service;

    invoke-virtual {v7, v6}, La2dp/Vol/service;->TextReader(Ljava/lang/String;)V

    .line 1349
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "pdusObj":[Ljava/lang/Object;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method
