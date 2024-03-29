.class final Lcom/directtap/h;
.super Lcom/directtap/p;


# static fields
.field protected static final a:I = 0x1


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/directtap/k;Lcom/directtap/s;Lcom/directtap/DTViewConfig;ZI)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/directtap/p;-><init>(Landroid/content/Context;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/directtap/h;->v:Z

    iput-boolean p5, p0, Lcom/directtap/h;->w:Z

    invoke-virtual {p0, p1, p4}, Lcom/directtap/h;->a(Landroid/content/Context;Lcom/directtap/DTViewConfig;)V

    invoke-virtual {p0, p1}, Lcom/directtap/h;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/directtap/h;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcom/directtap/DTViewConfig;)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/directtap/h;->j:Lcom/directtap/DTViewConfig;

    iget-object v0, p0, Lcom/directtap/h;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getBannerPosition()I

    move-result v0

    iput v0, p0, Lcom/directtap/h;->q:I

    iget-object v0, p0, Lcom/directtap/h;->u:Lcom/directtap/s;

    iget v1, p0, Lcom/directtap/h;->t:I

    invoke-virtual {v0, v1}, Lcom/directtap/s;->e(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/directtap/h;->l:I

    iget-object v0, p0, Lcom/directtap/h;->u:Lcom/directtap/s;

    iget v1, p0, Lcom/directtap/h;->t:I

    invoke-virtual {v0, v1}, Lcom/directtap/s;->e(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/directtap/h;->o:I

    invoke-virtual {p2}, Lcom/directtap/DTViewConfig;->isBannerFitScreenWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/directtap/h;->m:I

    iput v2, p0, Lcom/directtap/h;->p:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/directtap/h;->u:Lcom/directtap/s;

    iget v1, p0, Lcom/directtap/h;->t:I

    invoke-virtual {v0, v1}, Lcom/directtap/s;->d(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/directtap/h;->m:I

    iget-object v0, p0, Lcom/directtap/h;->u:Lcom/directtap/s;

    iget v1, p0, Lcom/directtap/h;->t:I

    invoke-virtual {v0, v1}, Lcom/directtap/s;->d(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/directtap/h;->p:I

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
