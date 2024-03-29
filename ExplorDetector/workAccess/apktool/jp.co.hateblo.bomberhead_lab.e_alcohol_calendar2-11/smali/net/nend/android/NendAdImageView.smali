.class final Lnet/nend/android/NendAdImageView;
.super Landroid/widget/ImageView;
.source "NendAdImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/NendAdImageView$OnAdImageClickListener;
    }
.end annotation


# instance fields
.field private listener:Lnet/nend/android/NendAdImageView$OnAdImageClickListener;

.field private mClickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lnet/nend/android/NendAdImageView;->mClickUrl:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    invoke-virtual {p0, p0}, Lnet/nend/android/NendAdImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click!! url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/nend/android/NendAdImageView;->mClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/nend/android/NendLog;->v(Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lnet/nend/android/NendAdImageView;->listener:Lnet/nend/android/NendAdImageView$OnAdImageClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lnet/nend/android/NendAdImageView;->listener:Lnet/nend/android/NendAdImageView$OnAdImageClickListener;

    invoke-interface {v0, p1}, Lnet/nend/android/NendAdImageView$OnAdImageClickListener;->onAdImageClick(Landroid/view/View;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lnet/nend/android/NendAdImageView;->mClickUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/nend/android/NendHelper;->startBrowser(Landroid/view/View;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method

.method setAdInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "adImage"    # Landroid/graphics/Bitmap;
    .param p2, "clickUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lnet/nend/android/NendAdImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iput-object p2, p0, Lnet/nend/android/NendAdImageView;->mClickUrl:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method setOnAdImageClickListener(Lnet/nend/android/NendAdImageView$OnAdImageClickListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/nend/android/NendAdImageView$OnAdImageClickListener;

    .prologue
    .line 56
    iput-object p1, p0, Lnet/nend/android/NendAdImageView;->listener:Lnet/nend/android/NendAdImageView$OnAdImageClickListener;

    .line 57
    return-void
.end method
