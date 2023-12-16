.class Lcom/directtap/r$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/r;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/directtap/r;


# direct methods
.method constructor <init>(Lcom/directtap/r;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    iput-object p2, p0, Lcom/directtap/r$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/directtap/r$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/directtap/DirectTap;->a()Lcom/directtap/DirectTap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->a(Lcom/directtap/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/directtap/r;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init called in lock synchronization"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-virtual {v0}, Lcom/directtap/r;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v3}, Lcom/directtap/r;->b(Lcom/directtap/r;)I

    move-result v3

    iget-object v4, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v4}, Lcom/directtap/r;->c(Lcom/directtap/r;)Lcom/directtap/DTViewConfig;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/directtap/q;->a(Landroid/app/Activity;ILcom/directtap/DTViewConfig;)Lcom/directtap/p;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/directtap/r;->a(Lcom/directtap/r;Lcom/directtap/p;)Lcom/directtap/p;

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/p;->k()Lcom/directtap/DTViewConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/p;->k()Lcom/directtap/DTViewConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->b(Lcom/directtap/r;)I

    move-result v0

    iget-object v2, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v2}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/p;->k()Lcom/directtap/DTViewConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/o;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->e(Lcom/directtap/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    iget-object v2, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v2}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/r;->b(Lcom/directtap/r;Lcom/directtap/p;)V

    :cond_1
    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->f(Lcom/directtap/r;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/directtap/r$2;->b:Lcom/directtap/r;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/directtap/r;->a(Lcom/directtap/r;Z)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
