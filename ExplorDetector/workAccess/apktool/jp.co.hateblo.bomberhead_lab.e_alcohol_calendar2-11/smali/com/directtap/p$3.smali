.class Lcom/directtap/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->x()V
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

    iput-object p1, p0, Lcom/directtap/p$3;->a:Lcom/directtap/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/directtap/p$3;->a:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iget-object v1, p0, Lcom/directtap/p$3;->a:Lcom/directtap/p;

    iget-object v1, v1, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/directtap/DirectTapListener;->onShow(Landroid/app/Activity;)V

    return-void
.end method
