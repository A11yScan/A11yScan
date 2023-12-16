.class final Lcom/directtap/w$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/w;


# direct methods
.method constructor <init>(Lcom/directtap/w;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/directtap/w$a;->setPriority(I)V

    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->a(Lcom/directtap/w;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Error in initialization of notification thread"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    const-class v0, Lcom/directtap/w;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification thread can\'t be started because sleep time is set to 0"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->b(Lcom/directtap/w;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->c(Lcom/directtap/w;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v0, Lcom/directtap/w;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********* Sleeping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v2}, Lcom/directtap/w;->a(Lcom/directtap/w;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms *********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->a(Lcom/directtap/w;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->b(Lcom/directtap/w;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/directtap/w$a;->a:Lcom/directtap/w;

    invoke-static {v0}, Lcom/directtap/w;->d(Lcom/directtap/w;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/directtap/w;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Will finish : No more to notify"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/w;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in notification thread why waiting for next loop"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :try_start_4
    const-class v2, Lcom/directtap/w;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Will continue : Still to notify"

    invoke-static {v2, v3}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
