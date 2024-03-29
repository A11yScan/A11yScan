.class final Lcom/directtap/DirectTap$5;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/directtap/DirectTapListener;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/directtap/DirectTapListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/directtap/DirectTap$5;->b:Lcom/directtap/DirectTapListener;

    iput-boolean p3, p0, Lcom/directtap/DirectTap$5;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/directtap/DirectTap$5;->a:Landroid/app/Activity;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/directtap/DirectTap$5;->b:Lcom/directtap/DirectTapListener;

    iget-boolean v3, p0, Lcom/directtap/DirectTap$5;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V

    return-void
.end method
