.class final Lcom/directtap/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->a(Landroid/app/Activity;Lcom/directtap/DirectTapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/DirectTapListener;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/directtap/DirectTapListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$5;->a:Lcom/directtap/DirectTapListener;

    iput-object p2, p0, Lcom/directtap/p$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/directtap/p$5;->a:Lcom/directtap/DirectTapListener;

    iget-object v1, p0, Lcom/directtap/p$5;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/directtap/DirectTapListener;->onStartWaiting(Landroid/app/Activity;)V

    return-void
.end method
