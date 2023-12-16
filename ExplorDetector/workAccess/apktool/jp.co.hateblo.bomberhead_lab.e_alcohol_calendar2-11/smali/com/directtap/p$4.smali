.class Lcom/directtap/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/directtap/p;


# direct methods
.method constructor <init>(Lcom/directtap/p;I)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$4;->b:Lcom/directtap/p;

    iput p2, p0, Lcom/directtap/p$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/directtap/p$4;->b:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iget-object v1, p0, Lcom/directtap/p$4;->b:Lcom/directtap/p;

    iget-object v1, v1, Lcom/directtap/p;->k:Landroid/app/Activity;

    iget v2, p0, Lcom/directtap/p$4;->a:I

    invoke-interface {v0, v1, v2}, Lcom/directtap/DirectTapListener;->onDismiss(Landroid/app/Activity;I)V

    return-void
.end method
