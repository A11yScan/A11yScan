.class Lcom/directtap/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/r;->a(Lcom/directtap/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/r;


# direct methods
.method constructor <init>(Lcom/directtap/r;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    invoke-virtual {v0}, Lcom/directtap/r;->removeAllViews()V

    iget-object v0, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    invoke-static {v0}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/p;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    iget-object v2, p0, Lcom/directtap/r$3;->a:Lcom/directtap/r;

    invoke-static {v2}, Lcom/directtap/r;->d(Lcom/directtap/r;)Lcom/directtap/p;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/directtap/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
