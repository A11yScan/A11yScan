.class public final Lnet/nend/android/NendAdView;
.super Landroid/widget/RelativeLayout;
.source "NendAdView.java"

# interfaces
.implements Lnet/nend/android/AdListener;
.implements Lnet/nend/android/DownloadTask$Downloadable;
.implements Lnet/nend/android/NendAdImageView$OnAdImageClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/NendAdView$NendError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lnet/nend/android/AdListener;",
        "Lnet/nend/android/DownloadTask$Downloadable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lnet/nend/android/NendAdImageView$OnAdImageClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAd:Lnet/nend/android/Ad;

.field private mApiKey:Ljava/lang/String;

.field private mController:Lnet/nend/android/NendAdController;

.field private mDensity:F

.field private mHasWindowFocus:Z

.field private mImageView:Lnet/nend/android/NendAdImageView;

.field private mIsClicked:Z

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mListener:Lnet/nend/android/NendAdListener;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mNendError:Lnet/nend/android/NendAdView$NendError;

.field private mOptOutImageView:Lnet/nend/android/OptOutImageView;

.field private mSpotId:I

.field private mTask:Lnet/nend/android/DownloadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/nend/android/DownloadTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lnet/nend/android/NendAdView;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/nend/android/AdParameter$ViewType;->values()[Lnet/nend/android/AdParameter$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/nend/android/NendAdView;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/nend/android/NendAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spotId"    # I
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/nend/android/NendAdView;->mDensity:F

    .line 38
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 41
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 44
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    .line 47
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    .line 50
    iput-boolean v2, p0, Lnet/nend/android/NendAdView;->mHasWindowFocus:Z

    .line 53
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    .line 59
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    .line 62
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    .line 65
    iput-boolean v2, p0, Lnet/nend/android/NendAdView;->mIsClicked:Z

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lnet/nend/android/NendAdView;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/nend/android/NendAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/nend/android/NendAdView;->mDensity:F

    .line 38
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 41
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 44
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    .line 47
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    .line 50
    iput-boolean v1, p0, Lnet/nend/android/NendAdView;->mHasWindowFocus:Z

    .line 53
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    .line 59
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    .line 62
    iput-object v2, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    .line 65
    iput-boolean v1, p0, Lnet/nend/android/NendAdView;->mIsClicked:Z

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_ATTRIBUTE_SET:Lnet/nend/android/NendStatus;

    invoke-virtual {v1}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    sget-object v0, Lnet/nend/android/NendConstants$Attribute;->SPOT_ID:Lnet/nend/android/NendConstants$Attribute;

    invoke-virtual {v0}, Lnet/nend/android/NendConstants$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lnet/nend/android/NendConstants$Attribute;->API_KEY:Lnet/nend/android/NendConstants$Attribute;

    invoke-virtual {v1}, Lnet/nend/android/NendConstants$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/nend/android/NendAdView;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 118
    sget-object v0, Lnet/nend/android/NendConstants$Attribute;->RELOADABLE:Lnet/nend/android/NendConstants$Attribute;

    invoke-virtual {v0}, Lnet/nend/android/NendConstants$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->pause()V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->loadAd()V

    .line 124
    return-void
.end method

.method private deallocateAd()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0}, Lnet/nend/android/Ad;->removeListener()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 521
    :cond_0
    return-void
.end method

.method private deallocateAdView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 549
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    .line 552
    :cond_0
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    invoke-virtual {v0, v1}, Lnet/nend/android/OptOutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    .line 557
    :cond_1
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    if-eqz v0, :cond_2

    .line 559
    iput-object v1, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    .line 561
    :cond_2
    return-void
.end method

.method private deallocateChildView()V
    .locals 0

    .prologue
    .line 537
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->removeAllViews()V

    .line 539
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateAdView()V

    .line 541
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateWebView()V

    .line 542
    return-void
.end method

.method private deallocateController()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    invoke-virtual {v0}, Lnet/nend/android/NendAdController;->cancelRequest()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 510
    :cond_0
    return-void
.end method

.method private deallocateField()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateController()V

    .line 489
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateTask()V

    .line 492
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateAd()V

    .line 495
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->removeListener()V

    .line 498
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateChildView()V

    .line 499
    return-void
.end method

.method private deallocateTask()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/nend/android/DownloadTask;->cancel(Z)Z

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    .line 531
    :cond_0
    return-void
.end method

.method private deallocateWebView()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 569
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 570
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    .line 573
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spotId"    # I
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 145
    if-gtz p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_SPOT_ID:Lnet/nend/android/NendStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spot id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_API_KEY:Lnet/nend/android/NendStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    invoke-static {p1}, Lnet/nend/android/NendHelper;->setDebuggable(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    .line 158
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/nend/android/NendAdView;->mDensity:F

    .line 161
    iput p2, p0, Lnet/nend/android/NendAdView;->mSpotId:I

    .line 162
    iput-object p3, p0, Lnet/nend/android/NendAdView;->mApiKey:Ljava/lang/String;

    .line 165
    new-instance v0, Lnet/nend/android/NendAd;

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/nend/android/NendAd;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 166
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0, p0}, Lnet/nend/android/Ad;->setListener(Lnet/nend/android/AdListener;)V

    .line 169
    new-instance v0, Lnet/nend/android/NendAdController;

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-direct {v0, v1}, Lnet/nend/android/NendAdController;-><init>(Lnet/nend/android/Ad;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 170
    return-void
.end method

.method private isDeallocate()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSizeAppropriate(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 387
    iget-object v4, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v4}, Lnet/nend/android/Ad;->getHeight()I

    move-result v2

    .line 388
    .local v2, "height":I
    iget-object v4, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v4}, Lnet/nend/android/Ad;->getWidth()I

    move-result v3

    .line 391
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 392
    .local v0, "adHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 395
    .local v1, "adWidth":I
    const/16 v4, 0x140

    if-ne v1, v4, :cond_0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_0

    const/16 v0, 0x32

    .line 398
    :cond_0
    if-ne v2, v0, :cond_1

    if-eq v3, v1, :cond_3

    .line 399
    :cond_1
    mul-int/lit8 v4, v2, 0x2

    if-ne v4, v0, :cond_2

    mul-int/lit8 v4, v3, 0x2

    if-eq v4, v1, :cond_3

    .line 398
    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private restartController()V
    .locals 5

    .prologue
    .line 604
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lnet/nend/android/NendAd;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnet/nend/android/NendAdView;->mSpotId:I

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mApiKey:Ljava/lang/String;

    iget-object v4, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendAd;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 607
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0, p0}, Lnet/nend/android/Ad;->setListener(Lnet/nend/android/AdListener;)V

    .line 609
    :cond_0
    new-instance v0, Lnet/nend/android/NendAdController;

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-direct {v0, v1}, Lnet/nend/android/NendAdController;-><init>(Lnet/nend/android/Ad;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 611
    :cond_1
    return-void
.end method

.method private setAdView(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, -0x2

    .line 408
    sget-boolean v2, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 409
    :cond_0
    sget-boolean v2, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 412
    :cond_1
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v2, :cond_2

    .line 449
    :goto_0
    return-void

    .line 417
    :cond_2
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->removeAllViews()V

    .line 420
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateWebView()V

    .line 423
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v2}, Lnet/nend/android/Ad;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lnet/nend/android/NendAdView;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v3}, Lnet/nend/android/Ad;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/nend/android/NendAdView;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v0, "imageLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    invoke-virtual {v2}, Lnet/nend/android/OptOutImageView;->hasDrawable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v3}, Lnet/nend/android/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lnet/nend/android/NendAdImageView;->setAdInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 445
    :goto_1
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    invoke-virtual {v2}, Lnet/nend/android/OptOutImageView;->bringToFront()V

    .line 448
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lnet/nend/android/NendAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 431
    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    .line 433
    new-instance v2, Lnet/nend/android/NendAdImageView;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/nend/android/NendAdImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    .line 434
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v3}, Lnet/nend/android/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lnet/nend/android/NendAdImageView;->setAdInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    invoke-virtual {v2, p0}, Lnet/nend/android/NendAdImageView;->setOnAdImageClickListener(Lnet/nend/android/NendAdImageView$OnAdImageClickListener;)V

    .line 436
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mImageView:Lnet/nend/android/NendAdImageView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v2, Lnet/nend/android/OptOutImageView;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v4}, Lnet/nend/android/Ad;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/nend/android/OptOutImageView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    .line 439
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    invoke-virtual {v2}, Lnet/nend/android/OptOutImageView;->loadImage()V

    .line 440
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 441
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 442
    iget-object v2, p0, Lnet/nend/android/NendAdView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mOptOutImageView:Lnet/nend/android/OptOutImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setWebView()V
    .locals 5

    .prologue
    .line 455
    sget-boolean v0, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->removeAllViews()V

    .line 458
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateAdView()V

    .line 460
    new-instance v0, Lnet/nend/android/NendAdWebView;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/nend/android/NendAdWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    .line 461
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v2}, Lnet/nend/android/Ad;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lnet/nend/android/NendAdView;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v3}, Lnet/nend/android/Ad;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/nend/android/NendAdView;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lnet/nend/android/NendAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v1}, Lnet/nend/android/Ad;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public getNendError()Lnet/nend/android/NendAdView$NendError;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mNendError:Lnet/nend/android/NendAdView$NendError;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0}, Lnet/nend/android/Ad;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lnet/nend/android/NendAdView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->restartController()V

    .line 174
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    invoke-virtual {v0}, Lnet/nend/android/NendAdController;->requestAd()V

    .line 175
    return-void
.end method

.method public makeResponse(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v1, 0x0

    .line 330
    if-nez p1, :cond_0

    .line 346
    :goto_0
    return-object v1

    .line 336
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-boolean v2, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 340
    :cond_1
    sget-object v2, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v2, v0}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 344
    :cond_2
    sget-object v2, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v2, v0}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic makeResponse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/nend/android/NendAdView;->makeResponse(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onAdImageClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/nend/android/NendAdView;->mIsClicked:Z

    .line 469
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    invoke-interface {v0, p0}, Lnet/nend/android/NendAdListener;->onClick(Lnet/nend/android/NendAdView;)V

    .line 472
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 208
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lnet/nend/android/NendAd;

    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnet/nend/android/NendAdView;->mSpotId:I

    iget-object v3, p0, Lnet/nend/android/NendAdView;->mApiKey:Ljava/lang/String;

    iget-object v4, p0, Lnet/nend/android/NendAdView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendAd;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    .line 210
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0, p0}, Lnet/nend/android/Ad;->setListener(Lnet/nend/android/AdListener;)V

    .line 211
    new-instance v0, Lnet/nend/android/NendAdController;

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-direct {v0, v1}, Lnet/nend/android/NendAdController;-><init>(Lnet/nend/android/Ad;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    .line 212
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->loadAd()V

    .line 214
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateField()V

    .line 130
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnet/nend/android/NendAdView;->mSpotId:I

    iget-object v2, p0, Lnet/nend/android/NendAdView;->mApiKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lnet/nend/android/NendAdView;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->loadAd()V

    .line 132
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 476
    const-string v0, "onDetachedFromWindow!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateField()V

    .line 478
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 479
    return-void
.end method

.method public onDownload(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 351
    const-string v0, "onImageDownload!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 354
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-eqz v0, :cond_2

    .line 357
    invoke-direct {p0, p1}, Lnet/nend/android/NendAdView;->isSizeAppropriate(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    sget-object v0, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_DIFFERENCES:Lnet/nend/android/NendAdView$NendError;

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdView;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Lnet/nend/android/NendAdView;->setAdView(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    invoke-virtual {v0}, Lnet/nend/android/NendAdController;->reloadAd()Z

    .line 371
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    invoke-interface {v0, p0}, Lnet/nend/android/NendAdListener;->onReceiveAd(Lnet/nend/android/NendAdView;)V

    goto :goto_0

    .line 375
    :cond_2
    sget-object v0, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_DOWNLOAD:Lnet/nend/android/NendAdView$NendError;

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdView;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    goto :goto_0
.end method

.method public bridge synthetic onDownload(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/nend/android/NendAdView;->onDownload(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V
    .locals 1
    .param p1, "nendError"    # Lnet/nend/android/NendAdView$NendError;

    .prologue
    .line 301
    const-string v0, "onFailedToReceive!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 302
    sget-boolean v0, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_0
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->isDeallocate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-nez v0, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    invoke-virtual {v0}, Lnet/nend/android/NendAdController;->reloadAd()Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    const-string v0, "Failed to reload."

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 316
    :cond_3
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    if-eqz v0, :cond_1

    .line 317
    iput-object p1, p0, Lnet/nend/android/NendAdView;->mNendError:Lnet/nend/android/NendAdView$NendError;

    .line 318
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    invoke-interface {v0, p0}, Lnet/nend/android/NendAdListener;->onFailedToReceiveAd(Lnet/nend/android/NendAdView;)V

    goto :goto_0
.end method

.method public onReceiveAd()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "onReceive!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 255
    sget-boolean v0, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :cond_0
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->isDeallocate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mNendError:Lnet/nend/android/NendAdView$NendError;

    .line 267
    invoke-virtual {p0}, Lnet/nend/android/NendAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/nend/android/NendHelper;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    invoke-static {}, Lnet/nend/android/NendAdView;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I

    move-result-object v0

    iget-object v1, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v1}, Lnet/nend/android/Ad;->getViewType()Lnet/nend/android/AdParameter$ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    sget-boolean v0, Lnet/nend/android/NendAdView;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 271
    :pswitch_0
    new-instance v0, Lnet/nend/android/DownloadTask;

    invoke-direct {v0, p0}, Lnet/nend/android/DownloadTask;-><init>(Lnet/nend/android/DownloadTask$Downloadable;)V

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    .line 272
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mTask:Lnet/nend/android/DownloadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/nend/android/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 277
    :pswitch_1
    iget-boolean v0, p0, Lnet/nend/android/NendAdView;->mHasWindowFocus:Z

    if-eqz v0, :cond_3

    .line 278
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->setWebView()V

    .line 282
    :cond_3
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    invoke-interface {v0, p0}, Lnet/nend/android/NendAdListener;->onReceiveAd(Lnet/nend/android/NendAdView;)V

    goto :goto_0

    .line 291
    :cond_4
    sget-object v0, Lnet/nend/android/NendAdView$NendError;->INVALID_RESPONSE_TYPE:Lnet/nend/android/NendAdView$NendError;

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdView;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    goto :goto_0

    .line 295
    :cond_5
    sget-object v0, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_REQUEST:Lnet/nend/android/NendAdView$NendError;

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdView;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 220
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 221
    iput-boolean p1, p0, Lnet/nend/android/NendAdView;->mHasWindowFocus:Z

    .line 224
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    invoke-virtual {v0, p1}, Lnet/nend/android/NendAdController;->onWindowFocusChanged(Z)V

    .line 235
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mAd:Lnet/nend/android/Ad;

    invoke-interface {v0}, Lnet/nend/android/Ad;->getViewType()Lnet/nend/android/AdParameter$ViewType;

    move-result-object v0

    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    if-ne v0, v1, :cond_2

    .line 236
    if-eqz p1, :cond_3

    .line 237
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->setWebView()V

    .line 244
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnet/nend/android/NendAdView;->mIsClicked:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/nend/android/NendAdView;->mIsClicked:Z

    .line 246
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    invoke-interface {v0, p0}, Lnet/nend/android/NendAdListener;->onDismissScreen(Lnet/nend/android/NendAdView;)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->deallocateWebView()V

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "pause!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->restartController()V

    .line 200
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdController;->setReloadable(Z)V

    .line 201
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    .line 183
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "resume!"

    invoke-static {v0}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lnet/nend/android/NendAdView;->restartController()V

    .line 191
    iget-object v0, p0, Lnet/nend/android/NendAdView;->mController:Lnet/nend/android/NendAdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdController;->setReloadable(Z)V

    .line 192
    return-void
.end method

.method public setListener(Lnet/nend/android/NendAdListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/nend/android/NendAdListener;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/nend/android/NendAdView;->mListener:Lnet/nend/android/NendAdListener;

    .line 179
    return-void
.end method
