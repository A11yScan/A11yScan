.class Lcom/directtap/DirectTap$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/DirectTap;->i()V
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

    iput-object p1, p0, Lcom/directtap/DirectTap$4;->a:Lcom/directtap/DirectTap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/directtap/DirectTap;->f()Lcom/directtap/DirectTap;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/DirectTap;->d(Lcom/directtap/DirectTap;)Lcom/directtap/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/w;->a()V

    return-void
.end method
