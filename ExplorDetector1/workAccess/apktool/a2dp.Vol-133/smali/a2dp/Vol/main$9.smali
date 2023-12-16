.class La2dp/Vol/main$9;
.super Landroid/os/CountDownTimer;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/main;


# direct methods
.method constructor <init>(La2dp/Vol/main;JJ)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/main;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 479
    iput-object p1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const v4, 0x7f070053

    const/4 v3, 0x0

    .line 499
    :try_start_0
    sget-boolean v1, La2dp/Vol/service;->run:Z

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    const/4 v2, 0x1

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 501
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 502
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    invoke-static {v1}, La2dp/Vol/main;->access$900(La2dp/Vol/main;)V

    .line 503
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    iget-object v2, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    invoke-static {v2}, La2dp/Vol/main;->access$100(La2dp/Vol/main;)I

    move-result v2

    invoke-static {v1, v2}, La2dp/Vol/main;->access$200(La2dp/Vol/main;I)V

    .line 513
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    const/4 v2, 0x0

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 506
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    iput-boolean v3, v1, La2dp/Vol/main;->servrun:Z

    .line 510
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 511
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

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    const v4, 0x7f070053

    const/4 v3, 0x0

    .line 483
    :try_start_0
    sget-boolean v1, La2dp/Vol/service;->run:Z

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    const/4 v2, 0x1

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 485
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 495
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    const/4 v2, 0x0

    iput-boolean v2, v1, La2dp/Vol/main;->servrun:Z

    .line 488
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, La2dp/Vol/main$9;->this$0:La2dp/Vol/main;

    iput-boolean v3, v1, La2dp/Vol/main;->servrun:Z

    .line 492
    sget-object v1, La2dp/Vol/main;->serv:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 493
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
