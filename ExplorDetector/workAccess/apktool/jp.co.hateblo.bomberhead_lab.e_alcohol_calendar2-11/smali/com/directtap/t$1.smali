.class Lcom/directtap/t$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/t;-><init>(Landroid/app/Activity;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/directtap/t;


# direct methods
.method constructor <init>(Lcom/directtap/t;I)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    iput p2, p0, Lcom/directtap/t$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/directtap/t;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer time over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/directtap/t$1;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    invoke-static {v0}, Lcom/directtap/t;->a(Lcom/directtap/t;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    invoke-static {v0}, Lcom/directtap/t;->b(Lcom/directtap/t;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/directtap/t;->a(Lcom/directtap/t;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/directtap/t$1;->b:Lcom/directtap/t;

    invoke-static {v0}, Lcom/directtap/t;->a(Lcom/directtap/t;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/directtap/t$1;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/directtap/q;->a(Landroid/app/Activity;IZZ)V

    const-class v0, Lcom/directtap/t;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-> refresh"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
