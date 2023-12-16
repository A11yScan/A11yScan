.class Ljp/beyond/bead/BeadOptionalLayout;
.super Ljp/beyond/bead/BeadLayout;
.source "BeadOptionalLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_OPTIONAL:F = 0.6f

.field private static final CLOSE_BUTTON_DIV:I = 0x8

.field private static final CLOSE_BUTTON_DOWN_IMAGE_PATH:Ljava/lang/String; = "drawable/beadopt_close_button_down.png"

.field private static final CLOSE_BUTTON_MIN_SIZE:I = 0x28

.field private static final CLOSE_BUTTON_UP_IMAGE_PATH:Ljava/lang/String; = "drawable/beadopt_close_button_up.png"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljp/beyond/bead/BeadLayout;-><init>()V

    return-void
.end method

.method private addCloseButtonView(Landroid/widget/FrameLayout;Landroid/content/Context;I)V
    .locals 5
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "adImageWidth"    # I

    .prologue
    const/4 v4, -0x2

    .line 81
    invoke-direct {p0, p2}, Ljp/beyond/bead/BeadOptionalLayout;->createCloseButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    .line 84
    .local v1, "closeButton":Landroid/widget/Button;
    div-int/lit8 v2, p3, 0x8

    .line 85
    .local v2, "closeButtonSize":I
    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 87
    const/16 v2, 0x28

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method

.method private createCloseButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "closeButton":Landroid/widget/Button;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 108
    invoke-direct {p0, p1}, Ljp/beyond/bead/BeadOptionalLayout;->createImageButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-object v0
.end method

.method private createImageButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 123
    .local v2, "sld":Landroid/graphics/drawable/StateListDrawable;
    const-string v4, "drawable/beadopt_close_button_down.png"

    invoke-virtual {p0, p1, v4}, Ljp/beyond/bead/BeadOptionalLayout;->loadBitmapFromResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 127
    .local v1, "down":Landroid/graphics/drawable/Drawable;
    const-string v4, "drawable/beadopt_close_button_up.png"

    invoke-virtual {p0, p1, v4}, Ljp/beyond/bead/BeadOptionalLayout;->loadBitmapFromResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 130
    .local v3, "up":Landroid/graphics/drawable/Drawable;
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 131
    new-array v4, v7, [I

    const v5, -0x10100a7

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 133
    return-object v2
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isApp"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 41
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadOptionalLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 44
    .local v2, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Ljp/beyond/bead/BeadOptionalLayout;->getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 47
    .local v1, "imageRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2, p1, v1}, Ljp/beyond/bead/BeadOptionalLayout;->addLogoView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0, p1, p2, v1}, Ljp/beyond/bead/BeadOptionalLayout;->addAdImageView(Landroid/widget/FrameLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 56
    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, p1, v5}, Ljp/beyond/bead/BeadOptionalLayout;->addCloseButtonView(Landroid/widget/FrameLayout;Landroid/content/Context;I)V

    .line 59
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadOptionalLayout;->getMargin(Landroid/content/Context;)I

    move-result v3

    .line 63
    .local v3, "margin":I
    invoke-virtual {v4, v3, v8, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0, v2, p1, p3}, Ljp/beyond/bead/BeadOptionalLayout;->addDownloadButtonView(Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    .line 69
    return-object v2
.end method

.method protected getImageScaleHeight()F
    .locals 1

    .prologue
    .line 138
    const v0, 0x3f19999a    # 0.6f

    return v0
.end method
