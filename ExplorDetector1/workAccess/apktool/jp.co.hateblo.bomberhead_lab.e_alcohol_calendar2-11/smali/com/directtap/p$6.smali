.class final Lcom/directtap/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/DirectTapListener;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/directtap/DirectTapListener;Landroid/app/Activity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$6;->a:Lcom/directtap/DirectTapListener;

    iput-object p2, p0, Lcom/directtap/p$6;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/directtap/p$6;->c:I

    iput-boolean p4, p0, Lcom/directtap/p$6;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/directtap/p$6;->a:Lcom/directtap/DirectTapListener;

    iget-object v1, p0, Lcom/directtap/p$6;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/directtap/p$6;->c:I

    invoke-interface {v0, v1, v2}, Lcom/directtap/DirectTapListener;->onShowNotPossible(Landroid/app/Activity;I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/directtap/p$6;->d:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$6;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$6;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
