.class abstract Ljp/beyond/bead/BeadLayout;
.super Ljava/lang/Object;
.source "BeadLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_WIDTH:F = 0.9f

.field protected static final BUTTON_MARGIN:I = 0x5

.field private static final BUTTON_TEXT_SIZE:F = 16.0f

.field protected static final DOWNLOAD_TEXT_COLOR:I = -0x1

.field private static final DOWNLOAD_TEXT_SHADOW_COLOR:I

.field private static final DOWNLOAD_TEXT_SHADOW_RADIUS:F = 5.0f

.field private static final DOWNLOAD_TEXT_SHADOW_X:F = 0.0f

.field private static final DOWNLOAD_TEXT_SHADOW_Y:F = 0.0f

.field private static final DOWNLOAD_TEXT_SIZE:I = 0x16

.field static final ID_AD_VIEW:I = 0x5

.field static final ID_CANCEL_BUTTON:I = 0x3

.field static final ID_DEFAULT_IMAGE:I = 0x6

.field static final ID_DOWNLOAD_BUTTON:I = 0x1

.field static final ID_FINISH_BUTTON:I = 0x2

.field static final ID_QUIT_TEXT_VIEW:I = 0x4

.field private static final LOGO_IMAGE_PATH:Ljava/lang/String; = "drawable/beadlogo.png"

.field private static final LOGO_MAX_WIDTH:I = 0xc8

.field private static final LOGO_SCALE:F = 0.4f

.field private static mMargin:I


# instance fields
.field private mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const/16 v0, 0x12

    const/16 v1, 0x7b

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadLayout;->DOWNLOAD_TEXT_SHADOW_COLOR:I

    .line 86
    sput v2, Ljp/beyond/bead/BeadLayout;->mMargin:I

    .line 26
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljp/beyond/bead/BeadButtonLayout;

    invoke-direct {v0}, Ljp/beyond/bead/BeadButtonLayout;-><init>()V

    iput-object v0, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    .line 100
    return-void
.end method

.method private createLogo(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "view":Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 241
    const-string v1, "drawable/beadlogo.png"

    invoke-virtual {p0, p1, v1}, Ljp/beyond/bead/BeadLayout;->loadBitmapFromResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    return-object v0
.end method


# virtual methods
.method protected addAdImageView(Landroid/widget/FrameLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "mainLayout"    # Landroid/widget/FrameLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 197
    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    .line 195
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, p2, p3}, Ljp/beyond/bead/BeadLayout;->createAdImageView(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method

.method protected addAdImageView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "mainLayout"    # Landroid/widget/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 170
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    const/4 v2, -0x1

    .line 172
    const/4 v3, -0x2

    .line 173
    const/high16 v4, 0x3f800000    # 1.0f

    .line 170
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 174
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p2}, Ljp/beyond/bead/BeadLayout;->getMargin(Landroid/content/Context;)I

    move-result v0

    .line 175
    .local v0, "margin":I
    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    iget v2, p4, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 179
    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 182
    invoke-virtual {p0, p2, p3}, Ljp/beyond/bead/BeadLayout;->createAdImageView(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method protected addDownloadButtonView(Landroid/widget/LinearLayout;Landroid/content/Context;Z)V
    .locals 5
    .param p1, "mainLayout"    # Landroid/widget/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isApp"    # Z

    .prologue
    .line 256
    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3, p3}, Ljp/beyond/bead/BeadLayout;->createDownloadButton(Landroid/content/Context;ZZ)Landroid/widget/Button;

    move-result-object v0

    .line 257
    .local v0, "downloadButton":Landroid/widget/Button;
    invoke-virtual {p0, v0}, Ljp/beyond/bead/BeadLayout;->setButtonTextStrong(Landroid/widget/Button;)V

    .line 259
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    const/4 v3, -0x1

    .line 261
    const/4 v4, -0x2

    .line 259
    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v1, "downloadLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p2}, Ljp/beyond/bead/BeadLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 263
    .local v2, "margin":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method

.method protected addLogoView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "mainLayout"    # Landroid/widget/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 212
    invoke-direct {p0, p2}, Ljp/beyond/bead/BeadLayout;->createLogo(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .line 214
    .local v0, "logo":Landroid/widget/ImageView;
    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 215
    .local v1, "logoWidth":I
    const/16 v4, 0xc8

    if-le v1, v4, :cond_0

    .line 216
    const/16 v1, 0xc8

    .line 219
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    const/4 v4, -0x2

    .line 222
    const/high16 v5, 0x3f800000    # 1.0f

    .line 219
    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 223
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {p0, p2}, Ljp/beyond/bead/BeadLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 226
    .local v2, "margin":I
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void
.end method

.method protected createAdImageView(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "adView":Landroid/widget/ImageView;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 154
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    return-object v0
.end method

.method abstract createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/view/View;
.end method

.method protected createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 140
    return-object v0
.end method

.method protected createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCustomDrawable"    # Z

    .prologue
    .line 445
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "button":Landroid/widget/Button;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 447
    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->CancelButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v1}, Ljp/beyond/bead/BeadDialogStrings;->getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 451
    iget-object v1, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v1, p1, v0}, Ljp/beyond/bead/BeadButtonLayout;->setButtonPadding(Landroid/content/Context;Landroid/widget/Button;)V

    .line 453
    if-eqz p2, :cond_0

    .line 455
    iget-object v1, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v1, p1}, Ljp/beyond/bead/BeadButtonLayout;->createDefaultButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_0
    return-object v0
.end method

.method protected createDownloadButton(Landroid/content/Context;ZZ)Landroid/widget/Button;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCustomDrawable"    # Z
    .param p3, "isApp"    # Z

    .prologue
    .line 386
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, "button":Landroid/widget/Button;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 388
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadLayout;->getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_0
    iget-object v2, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v2, p1, v0}, Ljp/beyond/bead/BeadButtonLayout;->setButtonPadding(Landroid/content/Context;Landroid/widget/Button;)V

    .line 399
    const-string v1, ""

    .line 400
    .local v1, "label":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 402
    sget-object v2, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v2}, Ljp/beyond/bead/BeadDialogStrings;->getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 410
    return-object v0

    .line 405
    :cond_1
    sget-object v2, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v2}, Ljp/beyond/bead/BeadDialogStrings;->getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected createQuitButton(Landroid/content/Context;Z)Landroid/widget/Button;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCustomDrawable"    # Z

    .prologue
    .line 421
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, "button":Landroid/widget/Button;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 423
    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v1}, Ljp/beyond/bead/BeadDialogStrings;->getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 427
    iget-object v1, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v1, p1, v0}, Ljp/beyond/bead/BeadButtonLayout;->setButtonPadding(Landroid/content/Context;Landroid/widget/Button;)V

    .line 429
    if-eqz p2, :cond_0

    .line 431
    iget-object v1, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v1, p1}, Ljp/beyond/bead/BeadButtonLayout;->createDefaultButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_0
    return-object v0
.end method

.method protected getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Ljp/beyond/bead/BeadLayout;->getPortraitContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljp/beyond/bead/BeadLayout;->getLandscapeContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method protected getButtonLayout()Ljp/beyond/bead/BeadButtonLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    return-object v0
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    iget-object v0, p0, Ljp/beyond/bead/BeadLayout;->mButtonLayout:Ljp/beyond/bead/BeadButtonLayout;

    invoke-virtual {v0, p1}, Ljp/beyond/bead/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImageScaleHeight()F
.end method

.method protected getLandscapeContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {p0}, Ljp/beyond/bead/BeadLayout;->getImageScaleHeight()F

    move-result v6

    mul-float v3, v5, v6

    .line 334
    .local v3, "targetHeight":F
    int-to-float v5, p3

    div-float v2, v3, v5

    .line 337
    .local v2, "scale":F
    int-to-float v5, p2

    mul-float v4, v5, v2

    .line 338
    .local v4, "targetWidth":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float v0, v5, v6

    .line 340
    .local v0, "maxWidth":F
    cmpg-float v5, v0, v4

    if-gez v5, :cond_0

    .line 342
    int-to-float v5, p2

    div-float v2, v0, v5

    .line 345
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 346
    .local v1, "rect":Landroid/graphics/Rect;
    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 347
    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 348
    int-to-float v5, p2

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 349
    int-to-float v5, p3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 351
    return-object v1
.end method

.method protected getMargin(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget v0, Ljp/beyond/bead/BeadLayout;->mMargin:I

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadLayout;->mMargin:I

    .line 120
    :cond_0
    sget v0, Ljp/beyond/bead/BeadLayout;->mMargin:I

    return v0
.end method

.method protected getPortraitContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float v4, v5, v6

    .line 303
    .local v4, "targetWidth":F
    int-to-float v5, p2

    div-float v2, v4, v5

    .line 306
    .local v2, "scale":F
    int-to-float v5, p3

    mul-float v3, v5, v2

    .line 307
    .local v3, "targetHeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {p0}, Ljp/beyond/bead/BeadLayout;->getImageScaleHeight()F

    move-result v6

    mul-float v0, v5, v6

    .line 309
    .local v0, "maxHeight":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_0

    .line 311
    int-to-float v5, p3

    div-float v2, v0, v5

    .line 314
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 315
    .local v1, "rect":Landroid/graphics/Rect;
    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 316
    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 317
    int-to-float v5, p2

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 318
    int-to-float v5, p3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 320
    return-object v1
.end method

.method protected loadBitmapFromResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 469
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected setButtonTextStrong(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v2, 0x0

    .line 360
    const/4 v0, 0x2

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 362
    const/high16 v0, 0x40a00000    # 5.0f

    .line 365
    sget v1, Ljp/beyond/bead/BeadLayout;->DOWNLOAD_TEXT_SHADOW_COLOR:I

    .line 361
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 366
    return-void
.end method
