.class Lcom/directtap/r$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/r;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    iput-object p2, p0, Lcom/directtap/r$4;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/directtap/r$4;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->a(Lcom/directtap/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/directtap/r;->b(Lcom/directtap/r;Z)Z

    const-class v0, Lcom/directtap/r;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DTViewContainer attached to window"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    invoke-virtual {v0}, Lcom/directtap/r;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    iget-object v2, p0, Lcom/directtap/r$4;->b:Lcom/directtap/r;

    invoke-static {v2}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/r;->b(Lcom/directtap/r;Lcom/directtap/p;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
