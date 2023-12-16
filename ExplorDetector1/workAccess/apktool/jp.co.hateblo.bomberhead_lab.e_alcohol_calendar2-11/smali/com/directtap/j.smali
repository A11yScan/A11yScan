.class final Lcom/directtap/j;
.super Lcom/directtap/p;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/directtap/k;Lcom/directtap/s;Lcom/directtap/DTViewConfig;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/directtap/p;-><init>(Landroid/content/Context;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;I)V

    iput-boolean v6, p0, Lcom/directtap/j;->v:Z

    iput-boolean p5, p0, Lcom/directtap/j;->w:Z

    invoke-virtual {p0, p1, p4}, Lcom/directtap/j;->a(Landroid/content/Context;Lcom/directtap/DTViewConfig;)V

    invoke-virtual {p0, p1}, Lcom/directtap/j;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/directtap/j;->l()Landroid/app/Activity;

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

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconPosition()I

    move-result v0

    iput v0, p0, Lcom/directtap/j;->q:I

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconOrientation()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconNumber()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v2}, Lcom/directtap/DTViewConfig;->getIconOrientation()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getIconNumber()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v2}, Lcom/directtap/DTViewConfig;->getIconSize()I

    move-result v2

    invoke-static {p1, v2}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/directtap/j;->l:I

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/directtap/j;->m:I

    iget v0, p0, Lcom/directtap/j;->m:I

    iput v0, p0, Lcom/directtap/j;->p:I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/directtap/k$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getIconNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/directtap/k$a;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected b()I
    .locals 1

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/j;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getIconSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
