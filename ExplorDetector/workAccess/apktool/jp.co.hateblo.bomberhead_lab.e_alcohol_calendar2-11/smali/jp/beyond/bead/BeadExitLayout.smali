.class Ljp/beyond/bead/BeadExitLayout;
.super Ljp/beyond/bead/BeadLayout;
.source "BeadExitLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 0.5f

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljp/beyond/bead/BeadLayout;-><init>()V

    return-void
.end method

.method private createLowerSectionButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/high16 v8, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadExitLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 89
    .local v2, "margin":I
    const/4 v5, 0x2

    invoke-static {p1, v5}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    .line 92
    .local v3, "marginTop":I
    invoke-virtual {p0, p1, v10}, Ljp/beyond/bead/BeadExitLayout;->createQuitButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v0

    .line 93
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 94
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 98
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v3, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0, p1, v10}, Ljp/beyond/bead/BeadExitLayout;->createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 108
    .restart local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-object v1
.end method

.method private createUpperSectionButtonLayout(Landroid/content/Context;Z)Landroid/widget/LinearLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isApp"    # Z

    .prologue
    const/4 v6, 0x0

    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadExitLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 64
    .local v2, "margin":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4, p2}, Ljp/beyond/bead/BeadExitLayout;->createDownloadButton(Landroid/content/Context;ZZ)Landroid/widget/Button;

    move-result-object v0

    .line 66
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    const/4 v4, -0x2

    .line 69
    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 70
    .local v3, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-object v1
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isApp"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadExitLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 33
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Ljp/beyond/bead/BeadExitLayout;->getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 36
    .local v0, "imageRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, p1, v0}, Ljp/beyond/bead/BeadExitLayout;->addLogoView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 39
    invoke-virtual {p0, v1, p1, p2, v0}, Ljp/beyond/bead/BeadExitLayout;->addAdImageView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 42
    invoke-direct {p0, p1, p3}, Ljp/beyond/bead/BeadExitLayout;->createUpperSectionButtonLayout(Landroid/content/Context;Z)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0, p1}, Ljp/beyond/bead/BeadExitLayout;->createLowerSectionButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    return-object v1
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-virtual {p0}, Ljp/beyond/bead/BeadExitLayout;->getButtonLayout()Ljp/beyond/bead/BeadButtonLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/beyond/bead/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageScaleHeight()F
    .locals 1

    .prologue
    .line 125
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method
