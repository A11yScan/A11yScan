.class La2dp/Vol/main$13;
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
    .line 1037
    iput-object p1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f070053

    const/4 v3, 0x0

    .line 1043
    :try_start_0
    sget-boolean v1, La2dp/Vol/service;->run:Z

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    const/4 v2, 0x1

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 1045
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1046
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    invoke-static {v1}, La2dp/Vol/main;->access$900(La2dp/Vol/main;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :goto_0
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    iget-object v2, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    invoke-static {v2}, La2dp/Vol/main;->access$100(La2dp/Vol/main;)I

    move-result v2

    invoke-static {v1, v2}, La2dp/Vol/main;->access$200(La2dp/Vol/main;I)V

    .line 1060
    return-void

    .line 1048
    :cond_0
    :try_start_1
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    const/4 v2, 0x0

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 1049
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1050
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    const/4 v2, 0x0

    iput v2, v1, La2dp/Vol/main;->connects:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "x":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1054
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    iput-boolean v3, v1, La2dp/Vol/main;->servrun:Z

    .line 1055
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 1056
    iget-object v1, p0, La2dp/Vol/main$13;->this$0:La2dp/Vol/main;

    iput v3, v1, La2dp/Vol/main;->connects:I

    .line 1057
    const-string v1, "A2DP_Volume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
