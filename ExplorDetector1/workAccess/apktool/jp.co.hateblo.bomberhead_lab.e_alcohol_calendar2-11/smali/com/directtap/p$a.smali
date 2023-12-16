.class Lcom/directtap/p$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/ImageView;

.field final synthetic g:Lcom/directtap/p;


# direct methods
.method protected constructor <init>(Lcom/directtap/p;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/directtap/p$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/directtap/p$a;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/directtap/p;->m:I

    iget v2, p1, Lcom/directtap/p;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/directtap/p$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v4

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v4

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/directtap/p$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    return-void
.end method

.method private a()Landroid/webkit/WebView;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/directtap/p$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    const-string v2, "DirectTapJS"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {}, Lcom/directtap/DirectTap;->b()Lcom/directtap/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    new-instance v1, Lcom/directtap/p$a$1;

    invoke-direct {v1, p0}, Lcom/directtap/p$a$1;-><init>(Lcom/directtap/p$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/directtap/p$a$2;

    invoke-direct {v1, p0}, Lcom/directtap/p$a$2;-><init>(Lcom/directtap/p$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Lcom/directtap/p$a$3;

    invoke-direct {v1, p0}, Lcom/directtap/p$a$3;-><init>(Lcom/directtap/p$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Landroid/widget/ImageView;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->p(Lcom/directtap/p;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->p(Lcom/directtap/p;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/directtap/p$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/directtap/p$a$4;

    invoke-direct {v0, p0, p5}, Lcom/directtap/p$a$4;-><init>(Lcom/directtap/p$a;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget-object v3, v3, Lcom/directtap/p;->u:Lcom/directtap/s;

    invoke-virtual {v3}, Lcom/directtap/s;->a()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/directtap/p$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-virtual {v0, p1, v3}, Lcom/directtap/p;->a(II)I

    move-result v0

    iget-object v5, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-virtual {v5, p1, v2}, Lcom/directtap/p;->c(II)I

    move-result v5

    iget-object v6, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-virtual {v6, p1, v3}, Lcom/directtap/p;->b(II)I

    move-result v3

    iget-object v6, p0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-virtual {v6, p1, v2}, Lcom/directtap/p;->d(II)I

    move-result v2

    invoke-virtual {v4, v0, v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v4}, Lcom/directtap/p$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method
