.class final Lcom/directtap/DirectTap$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/directtap/DirectTapListener;

.field final synthetic d:Lcom/directtap/DTViewConfig;

.field final synthetic e:Z


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)V
    .locals 0

    iput p1, p0, Lcom/directtap/DirectTap$6;->a:I

    iput-object p2, p0, Lcom/directtap/DirectTap$6;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/directtap/DirectTap$6;->c:Lcom/directtap/DirectTapListener;

    iput-object p4, p0, Lcom/directtap/DirectTap$6;->d:Lcom/directtap/DTViewConfig;

    iput-boolean p5, p0, Lcom/directtap/DirectTap$6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "[Show] initialize process"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->a()Lcom/directtap/DirectTap;

    move-result-object v1

    if-eqz v1, :cond_3

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to show "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/directtap/DirectTap$6;->a:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const-string v0, "FullScreen"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$6;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/directtap/DirectTap;->e(Lcom/directtap/DirectTap;)Landroid/app/Activity;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/directtap/DirectTap$6;->a:I

    iget-object v2, p0, Lcom/directtap/DirectTap$6;->c:Lcom/directtap/DirectTapListener;

    iget-object v3, p0, Lcom/directtap/DirectTap$6;->d:Lcom/directtap/DTViewConfig;

    iget-boolean v4, p0, Lcom/directtap/DirectTap$6;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/directtap/q;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "Icon"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/directtap/DirectTap$6;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/directtap/DirectTap$6;->c:Lcom/directtap/DirectTapListener;

    iget-boolean v3, p0, Lcom/directtap/DirectTap$6;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V

    iget-object v0, p0, Lcom/directtap/DirectTap$6;->d:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/DirectTap$6;->d:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/directtap/DirectTap$6;->a:I

    iget-object v1, p0, Lcom/directtap/DirectTap$6;->d:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/o;->b(ILjava/lang/String;)V

    goto :goto_1
.end method
