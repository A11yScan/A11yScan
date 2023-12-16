.class final Lnet/nend/android/OptOutImageView;
.super Landroid/widget/ImageView;
.source "OptOutImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/nend/android/DownloadTask$Downloadable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/OptOutImageView$OptOutHandler;,
        Lnet/nend/android/OptOutImageView$ScrollParams;,
        Lnet/nend/android/OptOutImageView$TapMargin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ImageView;",
        "Landroid/view/View$OnClickListener;",
        "Lnet/nend/android/DownloadTask$Downloadable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_RETRY_CNT:I = 0x3

.field private static final MESSAGE_CODE:I = 0x2ce

.field private static optOutImage:Landroid/graphics/Bitmap;


# instance fields
.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOptOutImageUrl:Ljava/lang/String;

.field private final mOptOutUrl:Ljava/lang/String;

.field private mRetryCnt:I

.field private final mScroller:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/nend/android/OptOutImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/OptOutImageView;->$assertionsDisabled:Z

    .line 104
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    iput v7, p0, Lnet/nend/android/OptOutImageView;->mRetryCnt:I

    .line 134
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    .line 135
    new-instance v4, Lnet/nend/android/OptOutImageView$OptOutHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lnet/nend/android/OptOutImageView$OptOutHandler;-><init>(Landroid/os/Looper;Lnet/nend/android/OptOutImageView;)V

    iput-object v4, p0, Lnet/nend/android/OptOutImageView;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lnet/nend/android/OptOutImageView;->mDensity:F

    .line 139
    const-string v3, "http://nend.net/privacy/optsdkgate"

    .line 140
    .local v3, "optOutUrl":Ljava/lang/String;
    const-string v2, "http://img1.nend.net/img/common/optout/icon.png"

    .line 142
    .local v2, "optOutImageUrl":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 143
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_URL:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v5}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_URL:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v5}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_0
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_IMAGE_URL:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v5}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_IMAGE_URL:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v5}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 156
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/nend/android/OptOutImageView;->mOptOutUrl:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lnet/nend/android/OptOutImageView;->mOptOutImageUrl:Ljava/lang/String;

    .line 161
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-direct {p0, v8}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v4

    const/16 v5, 0x4e

    invoke-direct {p0, v5}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v8}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v6

    invoke-virtual {p0, v4, v7, v5, v6}, Lnet/nend/android/OptOutImageView;->setPadding(IIII)V

    .line 164
    invoke-virtual {p0, p0}, Lnet/nend/android/OptOutImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-boolean v4, Lnet/nend/android/OptOutImageView;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/nend/android/OptOutImageView;->mOptOutUrl:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lnet/nend/android/OptOutImageView;->mOptOutImageUrl:Ljava/lang/String;

    .line 158
    throw v4

    .line 154
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_2
    sget-object v4, Lnet/nend/android/NendStatus;->ERR_UNEXPECTED:Lnet/nend/android/NendStatus;

    invoke-static {v4, v1}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/nend/android/OptOutImageView;->mOptOutUrl:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lnet/nend/android/OptOutImageView;->mOptOutImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private realScrollLength(I)I
    .locals 2
    .param p1, "scrollLength"    # I

    .prologue
    .line 303
    int-to-float v0, p1

    iget v1, p0, Lnet/nend/android/OptOutImageView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 216
    sget-boolean v0, Lnet/nend/android/OptOutImageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 219
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lnet/nend/android/OptOutImageView;->mDensity:F

    iget v2, p0, Lnet/nend/android/OptOutImageView;->mDensity:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0x4e

    .line 249
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v5}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v1

    invoke-direct {p0, v4}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v2

    iget-object v3, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-direct {p0, v4}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 252
    const/4 v1, 0x0

    invoke-direct {p0, v4}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v5}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v3

    .line 251
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/nend/android/OptOutImageView;->setPadding(IIII)V

    .line 253
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/nend/android/OptOutImageView;->scrollTo(II)V

    .line 254
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->postInvalidate()V

    .line 256
    :cond_0
    return-void
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mOptOutImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method hasDrawable()Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadImage()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lnet/nend/android/OptOutImageView;->optOutImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lnet/nend/android/DownloadTask;

    invoke-direct {v0, p0}, Lnet/nend/android/DownloadTask;-><init>(Lnet/nend/android/DownloadTask$Downloadable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/nend/android/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lnet/nend/android/OptOutImageView;->optOutImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lnet/nend/android/OptOutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public makeResponse(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v2, 0x0

    .line 186
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v2

    .line 192
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, v0}, Lnet/nend/android/OptOutImageView;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 196
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-boolean v3, Lnet/nend/android/OptOutImageView;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 199
    :cond_2
    sget-object v3, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v3, v1}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v3, Lnet/nend/android/OptOutImageView;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 203
    :cond_3
    sget-object v3, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v3, v1}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic makeResponse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/nend/android/OptOutImageView;->makeResponse(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x2ce

    .line 281
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/high16 v1, 0x429c0000    # 78.0f

    iget v2, p0, Lnet/nend/android/OptOutImageView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mOptOutUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/nend/android/NendHelper;->startBrowser(Landroid/view/View;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->scrollLeft()V

    .line 290
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onDownload(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    if-eqz p1, :cond_1

    .line 227
    sput-object p1, Lnet/nend/android/OptOutImageView;->optOutImage:Landroid/graphics/Bitmap;

    .line 228
    invoke-virtual {p0, p1}, Lnet/nend/android/OptOutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lnet/nend/android/OptOutImageView;->mRetryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/nend/android/OptOutImageView;->mRetryCnt:I

    .line 233
    iget v0, p0, Lnet/nend/android/OptOutImageView;->mRetryCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->loadImage()V

    goto :goto_0
.end method

.method public bridge synthetic onDownload(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/nend/android/OptOutImageView;->onDownload(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method scrollLeft()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 265
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lnet/nend/android/OptOutImageView;->realScrollLength(I)I

    move-result v3

    iget-object v4, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 266
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->invalidate()V

    .line 267
    return-void
.end method

.method scrollRight()V
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iget-object v3, p0, Lnet/nend/android/OptOutImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 275
    invoke-virtual {p0}, Lnet/nend/android/OptOutImageView;->invalidate()V

    .line 276
    return-void
.end method
