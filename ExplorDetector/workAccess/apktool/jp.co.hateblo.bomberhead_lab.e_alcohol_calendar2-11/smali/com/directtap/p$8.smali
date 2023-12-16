.class Lcom/directtap/p$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/p;


# direct methods
.method constructor <init>(Lcom/directtap/p;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v2}, Lcom/directtap/p;->a(Lcom/directtap/p;)V

    const-class v2, Lcom/directtap/p;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DTView.build()"

    invoke-static {v2, v3, v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->b(Lcom/directtap/p;)Lcom/directtap/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    iget-object v1, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v1}, Lcom/directtap/p;->b(Lcom/directtap/p;)Lcom/directtap/k$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/directtap/p;->a(Lcom/directtap/k$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/directtap/p$a;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    iget-object v1, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    iget-object v1, v1, Lcom/directtap/p;->h:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/directtap/p$a;

    iget-object v1, v1, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v5}, Lcom/directtap/p;->b(Lcom/directtap/p;)Lcom/directtap/k$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/directtap/k$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/directtap/p;->a(Lcom/directtap/p;Landroid/webkit/WebView;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTView.load()"

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/directtap/p$8;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
