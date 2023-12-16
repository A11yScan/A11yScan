.class final Ljp/beyond/bead/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final ROUND_VALUE:F = 0.5f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static convertDpToPixel(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "pixel":I
    if-nez p0, :cond_0

    move v1, v0

    .line 37
    .end local v0    # "pixel":I
    .local v1, "pixel":I
    :goto_0
    return v1

    .line 35
    .end local v1    # "pixel":I
    .restart local v0    # "pixel":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .local v2, "scale":F
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move v1, v0

    .line 37
    .end local v0    # "pixel":I
    .restart local v1    # "pixel":I
    goto :goto_0
.end method
