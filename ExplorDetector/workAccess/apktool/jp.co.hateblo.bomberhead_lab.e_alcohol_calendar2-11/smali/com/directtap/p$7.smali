.class Lcom/directtap/p$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->a(Z)V
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

    iput-object p1, p0, Lcom/directtap/p$7;->a:Lcom/directtap/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/directtap/p$7;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->k(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$7;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->n(Lcom/directtap/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$7;->a:Lcom/directtap/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/directtap/p;->setVisibility(I)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/directtap/p$7;->a:Lcom/directtap/p;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/directtap/p;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
