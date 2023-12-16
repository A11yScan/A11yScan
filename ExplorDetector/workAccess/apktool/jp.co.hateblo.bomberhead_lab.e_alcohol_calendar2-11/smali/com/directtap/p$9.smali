.class Lcom/directtap/p$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->a(Landroid/app/Activity;Lcom/directtap/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/k;

.field final synthetic b:Lcom/directtap/k$a;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/directtap/p;


# direct methods
.method constructor <init>(Lcom/directtap/p;Lcom/directtap/k;Lcom/directtap/k$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iput-object p2, p0, Lcom/directtap/p$9;->a:Lcom/directtap/k;

    iput-object p3, p0, Lcom/directtap/p$9;->b:Lcom/directtap/k$a;

    iput-object p4, p0, Lcom/directtap/p$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTView "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    invoke-virtual {v2}, Lcom/directtap/p;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uniqueId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " content is refreshed on UIThread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/directtap/p$a;

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v2, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    invoke-virtual {v2}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/directtap/p$a;-><init>(Lcom/directtap/p;Landroid/content/Context;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/directtap/p$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v2, v0, Lcom/directtap/p;->h:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v2, p0, Lcom/directtap/p$9;->a:Lcom/directtap/k;

    invoke-static {v0, v2}, Lcom/directtap/p;->a(Lcom/directtap/p;Lcom/directtap/k;)Lcom/directtap/k;

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v2, p0, Lcom/directtap/p$9;->b:Lcom/directtap/k$a;

    invoke-static {v0, v2}, Lcom/directtap/p;->a(Lcom/directtap/p;Lcom/directtap/k$a;)Lcom/directtap/k$a;

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/directtap/p;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/directtap/p$9;->b:Lcom/directtap/k$a;

    if-eqz v0, :cond_2

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh html content for view uniqueId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget v3, v3, Lcom/directtap/p;->t:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v1, v1, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    invoke-static {v2}, Lcom/directtap/p;->d(Lcom/directtap/p;)Lcom/directtap/k$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/directtap/p;->a(Lcom/directtap/p;Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/directtap/p$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh html content for view uniqueId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p$9;->d:Lcom/directtap/p;

    iget v2, v2, Lcom/directtap/p;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not possible !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method
