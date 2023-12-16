.class Ljp/beyond/bead/BeadExitDefaultLayout;
.super Ljp/beyond/bead/BeadLayout;
.source "BeadExitDefaultLayout.java"


# static fields
.field private static final TEXT_LAYOUT_WIDTH:I = 0x12c

.field private static final TEXT_PADDING:I = 0xa

.field private static final TEXT_SIZE:F = 16.0f


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljp/beyond/bead/BeadLayout;-><init>()V

    return-void
.end method

.method private createQuitButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 86
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v3}, Ljp/beyond/bead/BeadExitDefaultLayout;->createQuitButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 93
    .restart local v1    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v3}, Ljp/beyond/bead/BeadExitDefaultLayout;->createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-object v0
.end method

.method private static createQuitTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, "view":Landroid/widget/TextView;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 58
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    sget-object v2, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitText:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v2}, Ljp/beyond/bead/BeadDialogStrings;->getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    const/16 v2, 0xa

    invoke-static {p0, v2}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 64
    .local v0, "padding":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    return-object v1
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isApp"    # Z

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadExitDefaultLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 33
    .local v0, "mainLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    const/4 v2, -0x1

    .line 35
    const/4 v3, -0x2

    .line 36
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 37
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x12c

    invoke-static {p1, v2}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 38
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 41
    invoke-static {p1}, Ljp/beyond/bead/BeadExitDefaultLayout;->createQuitTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0, p1}, Ljp/beyond/bead/BeadExitDefaultLayout;->createQuitButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    return-object v0
.end method

.method protected getImageScaleHeight()F
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
