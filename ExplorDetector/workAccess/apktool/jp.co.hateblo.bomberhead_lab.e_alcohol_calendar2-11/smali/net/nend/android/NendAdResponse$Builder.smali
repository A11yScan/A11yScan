.class final Lnet/nend/android/NendAdResponse$Builder;
.super Ljava/lang/Object;
.source "NendAdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendAdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mClickUrl:Ljava/lang/String;

.field private mHeight:I

.field private mImageUrl:Ljava/lang/String;

.field private mReloadIntervalInSeconds:I

.field private mViewType:Lnet/nend/android/AdParameter$ViewType;

.field private mWebViewUrl:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lnet/nend/android/NendAdResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/NendAdResponse$Builder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lnet/nend/android/NendAdResponse$Builder;)Lnet/nend/android/AdParameter$ViewType;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    return-object v0
.end method

.method static synthetic access$1(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lnet/nend/android/NendAdResponse$Builder;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mReloadIntervalInSeconds:I

    return v0
.end method

.method static synthetic access$4(Lnet/nend/android/NendAdResponse$Builder;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$5(Lnet/nend/android/NendAdResponse$Builder;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$6(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mWebViewUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method build()Lnet/nend/android/NendAdResponse;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lnet/nend/android/NendAdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/nend/android/NendAdResponse;-><init>(Lnet/nend/android/NendAdResponse$Builder;Lnet/nend/android/NendAdResponse;)V

    return-object v0
.end method

.method setClickUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;
    .locals 2
    .param p1, "clickUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mClickUrl:Ljava/lang/String;

    .line 43
    :goto_0
    return-object p0

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mClickUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method setHeight(I)Lnet/nend/android/NendAdResponse$Builder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 61
    iput p1, p0, Lnet/nend/android/NendAdResponse$Builder;->mHeight:I

    .line 62
    return-object p0
.end method

.method setImageUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mImageUrl:Ljava/lang/String;

    .line 34
    :goto_0
    return-object p0

    .line 32
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method setReloadIntervalInSeconds(I)Lnet/nend/android/NendAdResponse$Builder;
    .locals 0
    .param p1, "reloadIntervalInSeconds"    # I

    .prologue
    .line 56
    iput p1, p0, Lnet/nend/android/NendAdResponse$Builder;->mReloadIntervalInSeconds:I

    .line 57
    return-object p0
.end method

.method setViewType(Lnet/nend/android/AdParameter$ViewType;)Lnet/nend/android/NendAdResponse$Builder;
    .locals 1
    .param p1, "viewType"    # Lnet/nend/android/AdParameter$ViewType;

    .prologue
    .line 22
    sget-boolean v0, Lnet/nend/android/NendAdResponse$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lnet/nend/android/NendAdResponse$Builder;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 25
    return-object p0
.end method

.method setWebViewUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;
    .locals 2
    .param p1, "webViewUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mWebViewUrl:Ljava/lang/String;

    .line 52
    :goto_0
    return-object p0

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse$Builder;->mWebViewUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method setWidth(I)Lnet/nend/android/NendAdResponse$Builder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 66
    iput p1, p0, Lnet/nend/android/NendAdResponse$Builder;->mWidth:I

    .line 67
    return-object p0
.end method
