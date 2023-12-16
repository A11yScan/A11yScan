.class final Lcom/directtap/DirectTap$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->b(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$1;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/directtap/DirectTap$1;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/directtap/DirectTap$1;->d:Z

    iput-wide p5, p0, Lcom/directtap/DirectTap$1;->e:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/directtap/DirectTap$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/directtap/DirectTap;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/directtap/n$a;

    invoke-direct {v0}, Lcom/directtap/n$a;-><init>()V

    invoke-static {v0}, Lcom/directtap/c;->a(Lcom/directtap/d;)V

    const-string v0, "Starting DirectTap sdk"

    invoke-static {v0}, Lcom/directtap/c;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/directtap/DirectTap$1$1;

    invoke-direct {v2, p0, v0}, Lcom/directtap/DirectTap$1$1;-><init>(Lcom/directtap/DirectTap$1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to wait latch in DirectTap processStart()"

    invoke-static {v0, v2}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v0, "There is already a session of DirectTap SDK : only the Activity is updated"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/directtap/DirectTap;->a(Lcom/directtap/DirectTap;Landroid/app/Activity;)Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
