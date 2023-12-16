.class Lcom/directtap/DirectTap$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->j()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/DirectTap;


# direct methods
.method constructor <init>(Lcom/directtap/DirectTap;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$3;->a:Lcom/directtap/DirectTap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/DirectTap;->e(Lcom/directtap/DirectTap;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "A new version of DirectTap SDK is available"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
