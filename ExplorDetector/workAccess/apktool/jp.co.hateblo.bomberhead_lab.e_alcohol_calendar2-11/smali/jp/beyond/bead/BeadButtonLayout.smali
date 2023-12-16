.class Ljp/beyond/bead/BeadButtonLayout;
.super Ljava/lang/Object;
.source "BeadButtonLayout.java"


# static fields
.field private static final BUTTON_BOTTOM_PADDING:I = 0xc

.field private static final BUTTON_CORNER_RADIUS:I = 0x5

.field private static final BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final BUTTON_STROKE_WIDTH:I = 0x2

.field private static final BUTTON_TOP_PADDING:I = 0xc

.field private static final DEFAULT_BUTTON_DOWN_BOTTOM_COLOR:I

.field private static final DEFAULT_BUTTON_DOWN_STROKE_COLOR:I

.field private static final DEFAULT_BUTTON_DOWN_TOP_COLOR:I

.field private static final DEFAULT_BUTTON_UP_BOTTOM_COLOR:I

.field private static final DEFAULT_BUTTON_UP_STROKE_COLOR:I

.field private static final DEFAULT_BUTTON_UP_TOP_COLOR:I

.field private static final GREEN_BUTTON_DOWN_BOTTOM_COLOR:I

.field private static final GREEN_BUTTON_DOWN_STROKE_COLOR:I

.field private static final GREEN_BUTTON_DOWN_TOP_COLOR:I

.field private static final GREEN_BUTTON_UP_BOTTOM_COLOR:I

.field private static final GREEN_BUTTON_UP_STROKE_COLOR:I

.field private static final GREEN_BUTTON_UP_TOP_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x92

    const/16 v4, 0x15

    const/4 v3, 0x0

    .line 19
    const/16 v0, 0xcc

    const/16 v1, 0xd1

    const/16 v2, 0xd4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_TOP_COLOR:I

    .line 22
    const/16 v0, 0x77

    const/16 v1, 0x81

    const/16 v2, 0x85

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_BOTTOM_COLOR:I

    .line 25
    const/16 v0, 0x6e

    const/16 v1, 0x73

    const/16 v2, 0x76

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_STROKE_COLOR:I

    .line 28
    const/16 v0, 0xee

    const/16 v1, 0xf1

    const/16 v2, 0xf4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_TOP_COLOR:I

    .line 31
    const/16 v0, 0xbc

    const/16 v1, 0xc1

    const/16 v2, 0xc4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_BOTTOM_COLOR:I

    .line 34
    const/16 v0, 0xbe

    const/16 v1, 0xc3

    const/16 v2, 0xc6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_STROKE_COLOR:I

    .line 37
    const/16 v0, 0x1f

    const/16 v1, 0xda

    invoke-static {v0, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_TOP_COLOR:I

    .line 40
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_BOTTOM_COLOR:I

    .line 43
    const/16 v0, 0x12

    const/16 v1, 0x7b

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_STROKE_COLOR:I

    .line 46
    const/16 v0, 0x4b

    const/16 v1, 0xfa

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_TOP_COLOR:I

    .line 49
    const/16 v0, 0x16

    const/16 v1, 0x99

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_BOTTOM_COLOR:I

    .line 52
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_STROKE_COLOR:I

    .line 61
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Ljp/beyond/bead/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 16
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createButtonDrawable(Landroid/content/Context;[I[III)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downGradient"    # [I
    .param p3, "upGradient"    # [I
    .param p4, "downStrokeColor"    # I
    .param p5, "upStrokeColor"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 112
    .local v3, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x2

    invoke-static {p1, v5}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    .line 113
    .local v4, "strokeWidth":I
    const/4 v5, 0x5

    invoke-static {p1, v5}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 116
    .local v0, "cornerRadius":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Ljp/beyond/bead/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 117
    .local v1, "gdDown":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v4, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 118
    int-to-float v5, v0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 119
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 122
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Ljp/beyond/bead/BeadButtonLayout;->BUTTON_GRADIENT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v5, p3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 123
    .local v2, "gdUp":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v4, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 124
    int-to-float v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 125
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 127
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 128
    new-array v5, v8, [I

    const v6, -0x10100a7

    aput v6, v5, v7

    invoke-virtual {v3, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    return-object v3
.end method


# virtual methods
.method public createDefaultButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 76
    .line 78
    new-array v2, v3, [I

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_TOP_COLOR:I

    aput v0, v2, v1

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_BOTTOM_COLOR:I

    aput v0, v2, v4

    .line 79
    new-array v3, v3, [I

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_TOP_COLOR:I

    aput v0, v3, v1

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_BOTTOM_COLOR:I

    aput v0, v3, v4

    .line 80
    sget v4, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_DOWN_STROKE_COLOR:I

    .line 81
    sget v5, Ljp/beyond/bead/BeadButtonLayout;->DEFAULT_BUTTON_UP_STROKE_COLOR:I

    move-object v0, p0

    move-object v1, p1

    .line 76
    invoke-direct/range {v0 .. v5}, Ljp/beyond/bead/BeadButtonLayout;->createButtonDrawable(Landroid/content/Context;[I[III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 91
    .line 93
    new-array v2, v3, [I

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_TOP_COLOR:I

    aput v0, v2, v1

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_BOTTOM_COLOR:I

    aput v0, v2, v4

    .line 94
    new-array v3, v3, [I

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_TOP_COLOR:I

    aput v0, v3, v1

    sget v0, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_BOTTOM_COLOR:I

    aput v0, v3, v4

    .line 95
    sget v4, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_DOWN_STROKE_COLOR:I

    .line 96
    sget v5, Ljp/beyond/bead/BeadButtonLayout;->GREEN_BUTTON_UP_STROKE_COLOR:I

    move-object v0, p0

    move-object v1, p1

    .line 91
    invoke-direct/range {v0 .. v5}, Ljp/beyond/bead/BeadButtonLayout;->createButtonDrawable(Landroid/content/Context;[I[III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setButtonPadding(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 139
    invoke-static {p1, v3}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    .line 140
    .local v1, "topPixel":I
    invoke-static {p1, v3}, Ljp/beyond/bead/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 141
    .local v0, "bottomPixel":I
    invoke-virtual {p2, v2, v1, v2, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 142
    return-void
.end method
