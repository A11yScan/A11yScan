.class final Lcom/directtap/q$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/q;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/directtap/DTViewConfig;

.field final synthetic d:Lcom/directtap/DirectTapListener;

.field final synthetic e:Z


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lcom/directtap/DTViewConfig;Lcom/directtap/DirectTapListener;Z)V
    .locals 0

    iput p1, p0, Lcom/directtap/q$3;->a:I

    iput-object p2, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    iput-object p4, p0, Lcom/directtap/q$3;->d:Lcom/directtap/DirectTapListener;

    iput-boolean p5, p0, Lcom/directtap/q$3;->e:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x1

    const-string v0, "[Show] synchronization with other processes"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/q;->d()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/directtap/q$3;->setPriority(I)V

    iget v0, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v0}, Lcom/directtap/q;->g(I)Z

    iget v0, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v0}, Lcom/directtap/q;->c(I)V

    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$3;->a:I

    iget-object v3, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-static {v0, v1, v3}, Lcom/directtap/q;->b(Landroid/app/Activity;ILcom/directtap/DTViewConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/directtap/q$3;->d:Lcom/directtap/DirectTapListener;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V

    const-class v0, Lcom/directtap/q;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-->show finish thread without displaying : already displayed and not yet dismissed"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/directtap/q$3;->a:I

    iget-object v1, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/o;->b(ILjava/lang/String;)V

    :cond_0
    monitor-exit v6

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/directtap/q;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Show] try to show "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/directtap/q$3;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/q;->e()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/directtap/q;->e()Ljava/util/Map;

    move-result-object v1

    iget v4, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/directtap/p;

    invoke-virtual {v0}, Lcom/directtap/p;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/directtap/q$3;->e:Z

    iget-object v3, p0, Lcom/directtap/q$3;->d:Lcom/directtap/DirectTapListener;

    iget-object v4, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/directtap/p;->a(Landroid/app/Activity;ZLcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)Z

    move-result v3

    invoke-virtual {v0}, Lcom/directtap/p;->g()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/directtap/q;->e()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/directtap/q;->e()Ljava/util/Map;

    move-result-object v2

    iget v4, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v3

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v1}, Lcom/directtap/q;->i(I)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$3;->a:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/q;->a(Landroid/app/Activity;IJ)V

    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$3;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/q;->a(Landroid/app/Activity;IZZ)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/directtap/q$3;->a:I

    iget-object v1, p0, Lcom/directtap/q$3;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/o;->b(ILjava/lang/String;)V

    :cond_5
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_6
    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v1}, Lcom/directtap/m;->b(I)I

    move-result v1

    iget-object v3, p0, Lcom/directtap/q$3;->d:Lcom/directtap/DirectTapListener;

    iget-boolean v4, p0, Lcom/directtap/q$3;->e:Z

    invoke-static {v0, v1, v3, v4}, Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V

    const-class v0, Lcom/directtap/q;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> show finish thread without displaying : nothing to display for view type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/directtap/q$3;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/directtap/q$3;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$3;->a:I

    invoke-static {v0, v1}, Lcom/directtap/q;->b(Landroid/app/Activity;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_9
    move v0, v3

    goto/16 :goto_1
.end method
