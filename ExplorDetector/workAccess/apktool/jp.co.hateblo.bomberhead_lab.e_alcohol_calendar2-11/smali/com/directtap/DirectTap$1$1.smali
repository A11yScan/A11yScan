.class Lcom/directtap/DirectTap$1$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/directtap/DirectTap$1;


# direct methods
.method constructor <init>(Lcom/directtap/DirectTap$1;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iput-object p2, p0, Lcom/directtap/DirectTap$1$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/directtap/DirectTap;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/DirectTap$1$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string v0, "[Start] initialize API caller"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->h()Lcom/directtap/f;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/directtap/f;

    iget-object v2, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v2, v2, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v3, v3, Lcom/directtap/DirectTap$1;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/directtap/f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(Lcom/directtap/f;)Lcom/directtap/f;

    :cond_0
    const-string v0, "[Start] check activity parameter"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v0, v0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity parameter can not be null when calling DirectTap start() method"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const-string v0, "[Start] get package manager"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v0, v0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "[Start] check internet permission"

    invoke-static {v2}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    const-string v2, "android.permission.INTERNET"

    iget-object v3, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v3, v3, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "android.permission.INTERNET should be granted in AndroidManifest.xml to use DirectTap SDK"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "[Start] retrieve settings"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/n;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Initilization not possible, verify your application code and your connection to the network"

    invoke-static {v0}, Lcom/directtap/c;->c(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_3
    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "fetch settings"

    invoke-static {v0, v4, v2, v3}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "[Start] instantiation"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/DirectTap;

    iget-object v2, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v2, v2, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/directtap/DirectTap;-><init>(Landroid/app/Activity;Lcom/directtap/DirectTap$1;)V

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(Lcom/directtap/DirectTap;)Lcom/directtap/DirectTap;

    iget-object v0, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-boolean v0, v0, Lcom/directtap/DirectTap$1;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "[Start] check if a new version of SDK is available"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/DirectTap;->b(Lcom/directtap/DirectTap;)Z

    :cond_4
    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/DirectTap;->c(Lcom/directtap/DirectTap;)V

    const-string v0, "[Start] start prepare process"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-object v0, v0, Lcom/directtap/DirectTap$1;->b:Landroid/app/Activity;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/directtap/q;->a(Landroid/app/Activity;IJ)V

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DirectTap start process"

    iget-object v3, p0, Lcom/directtap/DirectTap$1$1;->b:Lcom/directtap/DirectTap$1;

    iget-wide v3, v3, Lcom/directtap/DirectTap$1;->e:J

    invoke-static {v0, v2, v3, v4}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
