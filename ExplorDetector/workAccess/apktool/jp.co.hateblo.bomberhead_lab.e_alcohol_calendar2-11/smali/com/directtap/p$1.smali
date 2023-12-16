.class Lcom/directtap/p$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p;->tapAppProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/directtap/p$1;->a:Lcom/directtap/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/directtap/p$1;->a:Lcom/directtap/p;

    invoke-virtual {v0}, Lcom/directtap/p;->d()V

    return-void

    :catch_0
    move-exception v0

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to wait for delayed refresh of the DTView"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
