.class final Lcom/directtap/DirectTap$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/directtap/DirectTap$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "[DismissOverlay] initialize process"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/DirectTap;->a()Lcom/directtap/DirectTap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to dismiss dtView for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/directtap/DirectTap$7;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/directtap/DirectTap$7;->a:I

    invoke-static {v0}, Lcom/directtap/q;->b(I)V

    :cond_0
    return-void
.end method
