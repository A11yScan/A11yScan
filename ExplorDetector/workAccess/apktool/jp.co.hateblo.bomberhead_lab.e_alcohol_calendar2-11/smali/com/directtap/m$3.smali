.class final Lcom/directtap/m$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/m;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/m$3;->a:Ljava/util/concurrent/CountDownLatch;

    iput p2, p0, Lcom/directtap/m$3;->b:I

    iput-object p3, p0, Lcom/directtap/m$3;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/directtap/m$3;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/directtap/m$3;->setPriority(I)V

    const-string v0, "[Load] prepare process started"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/m;->a()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/directtap/m;->a()Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/directtap/m$3;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "features_max_retry"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcom/directtap/m$3;->b:I

    invoke-static {v3, v2}, Lcom/directtap/m;->a(II)V

    move v3, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/directtap/m$3;->c:Landroid/content/Context;

    iget v4, p0, Lcom/directtap/m$3;->b:I

    invoke-static {v0, v4}, Lcom/directtap/m;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const-class v4, Lcom/directtap/m;

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallToView for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/directtap/m$3;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/directtap/m$3;->b:I

    invoke-static {v4, v0, v3}, Lcom/directtap/m;->a(ILjava/util/List;I)Z
    :try_end_1
    .catch Lcom/directtap/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/directtap/m;->a()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    invoke-static {}, Lcom/directtap/m;->a()Ljava/util/Map;

    move-result-object v0

    iget v5, p0, Lcom/directtap/m$3;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "[Load] Error when retrieving the content of the view"

    invoke-static {v1}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    const-class v1, Lcom/directtap/m;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server request error type view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/directtap/m$3;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : we don\'t retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-class v0, Lcom/directtap/m;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-> load() process is finished"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Load] load process finished"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v4, "[Load] Error when retrieving the content of the view"

    invoke-static {v4}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    const-class v4, Lcom/directtap/m;

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode json response type view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/directtap/m$3;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_1
    move v0, v2

    goto :goto_2
.end method
