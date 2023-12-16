.class Lcom/directtap/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/directtap/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectTapSDK"

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/directtap/y;->n()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/directtap/y;->n()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/directtap/y;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/directtap/y;->n()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/directtap/y;->n()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
