.class final Lcom/directtap/DirectTap$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->a(Lcom/directtap/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/v;


# direct methods
.method constructor <init>(Lcom/directtap/v;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$2;->a:Lcom/directtap/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/directtap/DirectTap$2;->setPriority(I)V

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/DirectTap;->d(Lcom/directtap/DirectTap;)Lcom/directtap/w;

    move-result-object v0

    iget-object v1, p0, Lcom/directtap/DirectTap$2;->a:Lcom/directtap/v;

    invoke-virtual {v0, v1}, Lcom/directtap/w;->a(Lcom/directtap/v;)V

    return-void
.end method
