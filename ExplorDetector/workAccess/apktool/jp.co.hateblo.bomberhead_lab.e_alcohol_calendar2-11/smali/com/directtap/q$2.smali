.class final Lcom/directtap/q$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/q;->a(Landroid/app/Activity;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/CountDownLatch;Landroid/app/Activity;J)V
    .locals 0

    iput p1, p0, Lcom/directtap/q$2;->a:I

    iput-object p2, p0, Lcom/directtap/q$2;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/directtap/q$2;->c:Landroid/app/Activity;

    iput-wide p4, p0, Lcom/directtap/q$2;->d:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "[Prepare] synchronization with other processes"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/q;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/q$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget v0, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v0}, Lcom/directtap/q;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[Prepare] no component for which to load content"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/directtap/q$2;->setPriority(I)V

    const-string v0, "[Prepare] preload content"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/q$2;->c:Landroid/app/Activity;

    iget v2, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v0, v2}, Lcom/directtap/m;->a(Landroid/content/Context;I)V

    const-string v0, "[Prepare] fetch UI settings"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/s;

    invoke-direct {v0}, Lcom/directtap/s;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Prepare] get preloaded content for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/directtap/q$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget v2, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v2}, Lcom/directtap/m;->a(I)Lcom/directtap/l;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/directtap/l;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Prepare] failed to get content to show for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/directtap/q$2;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    const-class v3, Lcom/directtap/q;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->Prepare failed to get an impression to show for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/directtap/q$2;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/directtap/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v3}, Lcom/directtap/q;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/directtap/q$2;->c:Landroid/app/Activity;

    iget v4, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v3, v4, v2}, Lcom/directtap/q;->a(Landroid/app/Activity;ILcom/directtap/l;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v3}, Lcom/directtap/q;->e(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/directtap/q$2;->c:Landroid/app/Activity;

    iget v4, p0, Lcom/directtap/q$2;->a:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v0, v5}, Lcom/directtap/q;->a(Landroid/app/Activity;ILcom/directtap/l;Lcom/directtap/s;Lcom/directtap/DTViewConfig;)V

    :cond_4
    iget v0, p0, Lcom/directtap/q$2;->a:I

    iget-wide v2, p0, Lcom/directtap/q$2;->d:J

    invoke-static {v0, v2, v3}, Lcom/directtap/q;->a(IJ)J

    move-result-wide v2

    iget-object v0, p0, Lcom/directtap/q$2;->c:Landroid/app/Activity;

    iget v4, p0, Lcom/directtap/q$2;->a:I

    invoke-static {v0, v4, v2, v3}, Lcom/directtap/q;->b(Landroid/app/Activity;IJ)V

    const-class v0, Lcom/directtap/q;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->Prepare for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/directtap/q$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finish thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Prepare] Prepare process finished"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    const-class v3, Lcom/directtap/q;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->Prepare with impression_id list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/directtap/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
