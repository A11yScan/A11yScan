.class La2dp/Vol/StoreLoc$1;
.super Landroid/os/CountDownTimer;
.source "StoreLoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/StoreLoc;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/StoreLoc;


# direct methods
.method constructor <init>(La2dp/Vol/StoreLoc;JJ)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/StoreLoc;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 135
    iput-object p1, p0, La2dp/Vol/StoreLoc$1;->this$0:La2dp/Vol/StoreLoc;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, La2dp/Vol/StoreLoc$1;->this$0:La2dp/Vol/StoreLoc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La2dp/Vol/StoreLoc;->access$200(La2dp/Vol/StoreLoc;Z)V

    .line 147
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 138
    iget-object v0, p0, La2dp/Vol/StoreLoc$1;->this$0:La2dp/Vol/StoreLoc;

    invoke-static {v0}, La2dp/Vol/StoreLoc;->access$000(La2dp/Vol/StoreLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, La2dp/Vol/StoreLoc$1;->this$0:La2dp/Vol/StoreLoc;

    .line 140
    invoke-static {v0}, La2dp/Vol/StoreLoc;->access$100(La2dp/Vol/StoreLoc;)La2dp/Vol/MyApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x14

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 139
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_0
    return-void
.end method
