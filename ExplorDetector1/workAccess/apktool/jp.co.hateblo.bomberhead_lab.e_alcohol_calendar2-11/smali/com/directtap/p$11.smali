.class Lcom/directtap/p$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->b(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->e(Lcom/directtap/p;)V

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->f(Lcom/directtap/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    iget-object v1, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-static {v1}, Lcom/directtap/p;->g(Lcom/directtap/p;)Lcom/directtap/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/p;->b(Lcom/directtap/p;Lcom/directtap/k;)V

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowVisibility() check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->g(Lcom/directtap/p;)Lcom/directtap/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->g(Lcom/directtap/p;)Lcom/directtap/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " overlay "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    iget-boolean v2, v2, Lcom/directtap/p;->w:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is visible ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$11;->a:Lcom/directtap/p;

    invoke-virtual {v0}, Lcom/directtap/p;->getWindowVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "no imp"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
