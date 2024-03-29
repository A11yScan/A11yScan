.class final Lcom/directtap/i;
.super Lcom/directtap/p;


# static fields
.field protected static final a:Ljava/lang/String; = "fullscreen"

.field protected static final b:I = 0x5


# instance fields
.field private x:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/directtap/k;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/directtap/s;",
            "Lcom/directtap/DTViewConfig;",
            ")V"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/directtap/p;-><init>(Landroid/content/Context;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/directtap/i;->x:I

    iput v7, p0, Lcom/directtap/i;->o:I

    iput v7, p0, Lcom/directtap/i;->p:I

    invoke-direct {p0}, Lcom/directtap/i;->m()I

    move-result v0

    iput v0, p0, Lcom/directtap/i;->m:I

    new-instance v0, Lcom/directtap/i$1;

    invoke-direct {v0, p0}, Lcom/directtap/i$1;-><init>(Lcom/directtap/i;)V

    iput-object v0, p0, Lcom/directtap/i;->n:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v0}, Lcom/directtap/s;->e()I

    move-result v0

    iput v0, p0, Lcom/directtap/i;->s:I

    invoke-virtual {p0, p1}, Lcom/directtap/i;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private m()I
    .locals 5

    invoke-virtual {p0}, Lcom/directtap/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/DTViewConfig;->getFullScreenOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/directtap/s;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5a

    :cond_0
    iget v2, p0, Lcom/directtap/i;->x:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/directtap/i;->n()I

    move-result v2

    iput v2, p0, Lcom/directtap/i;->x:I

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/directtap/i;->x:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when computing the webview size. parentActivity.getResources().getDisplayMetrics() returned metrics.widthPixels : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and metrics.heightPixels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private n()I
    .locals 2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/directtap/i;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    return v0
.end method


# virtual methods
.method protected a(II)I
    .locals 6

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/directtap/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1}, Lcom/directtap/s;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1}, Lcom/directtap/s;->d()I

    move-result v1

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    neg-int v1, v1

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1, p1}, Lcom/directtap/s;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    neg-int v1, p2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1, p1}, Lcom/directtap/s;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v1, p0, Lcom/directtap/i;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getFullScreenOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/directtap/p;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "fullscreen"

    return-object v0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected b(II)I
    .locals 3

    invoke-virtual {p0}, Lcom/directtap/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1}, Lcom/directtap/s;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    neg-int v1, p2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1, p1}, Lcom/directtap/s;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/directtap/i;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getFullScreenOrientation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/directtap/p;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v0, p1}, Lcom/directtap/s;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/directtap/p;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method protected d(II)I
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v0}, Lcom/directtap/s;->d()I

    move-result v0

    const-wide v1, 0x4046800000000000L    # 45.0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/directtap/i;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v2}, Lcom/directtap/s;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcom/directtap/e;->a(Landroid/content/Context;I)I

    move-result v1

    neg-int v0, v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/directtap/i;->u:Lcom/directtap/s;

    invoke-virtual {v1, p1}, Lcom/directtap/s;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/directtap/p;->d(II)I

    move-result v0

    goto :goto_0
.end method
