.class Lcom/directtap/p$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->a(Landroid/app/Activity;ZLcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/directtap/p;


# direct methods
.method constructor <init>(Lcom/directtap/p;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    iput-boolean p2, p0, Lcom/directtap/p$12;->a:Z

    iput-boolean p3, p0, Lcom/directtap/p$12;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    iget-boolean v1, p0, Lcom/directtap/p$12;->a:Z

    invoke-static {v0, v1}, Lcom/directtap/p;->a(Lcom/directtap/p;Z)V

    iget-boolean v0, p0, Lcom/directtap/p$12;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->h(Lcom/directtap/p;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->i(Lcom/directtap/p;)V

    :cond_1
    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->j(Lcom/directtap/p;)V

    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->f(Lcom/directtap/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    iget-object v1, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v1}, Lcom/directtap/p;->g(Lcom/directtap/p;)Lcom/directtap/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/p;->b(Lcom/directtap/p;Lcom/directtap/k;)V

    :cond_2
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTView.show() wait for rendering"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$12;->c:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTView.show() rendered"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
