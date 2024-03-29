.class final Lcom/directtap/DirectTap$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->b(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    iput p1, p0, Lcom/directtap/DirectTap$9;->a:I

    iput-object p2, p0, Lcom/directtap/DirectTap$9;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "[Refresh] initialize process"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->a()Lcom/directtap/DirectTap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to refresh dtView for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/directtap/DirectTap$9;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$9;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/directtap/DirectTap;->e(Lcom/directtap/DirectTap;)Landroid/app/Activity;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/directtap/DirectTap$9;->a:I

    invoke-static {v1}, Lcom/directtap/q;->c(I)V

    iget v1, p0, Lcom/directtap/DirectTap$9;->a:I

    invoke-static {v0, v1, v4, v4}, Lcom/directtap/q;->a(Landroid/app/Activity;IZZ)V

    :cond_1
    return-void
.end method
