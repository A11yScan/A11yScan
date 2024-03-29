.class final Lnet/nend/android/NendAd;
.super Ljava/lang/Object;
.source "NendAd.java"

# interfaces
.implements Lnet/nend/android/Ad;
.implements Lnet/nend/android/DownloadTask$Downloadable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/nend/android/Ad;",
        "Lnet/nend/android/DownloadTask$Downloadable",
        "<",
        "Lnet/nend/android/AdParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I = null

.field static final synthetic $assertionsDisabled:Z

.field private static final NEND_UID_FILE_NAME:Ljava/lang/String; = "NENDUUID"


# instance fields
.field private mClickUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mImageUrl:Ljava/lang/String;

.field private mListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/nend/android/AdListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mReloadIntervalInSeconds:I

.field private final mRequest:Lnet/nend/android/NendAdRequest;

.field private mTask:Lnet/nend/android/DownloadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/nend/android/DownloadTask",
            "<",
            "Lnet/nend/android/AdParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:Ljava/lang/String;

.field private mViewType:Lnet/nend/android/AdParameter$ViewType;

.field private mWebViewUrl:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lnet/nend/android/NendAd;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

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
    sput-object v0, Lnet/nend/android/NendAd;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

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
    const-class v0, Lnet/nend/android/NendAd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    .line 29
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spotId"    # I
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAd;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 38
    iput-object v1, p0, Lnet/nend/android/NendAd;->mImageUrl:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lnet/nend/android/NendAd;->mClickUrl:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lnet/nend/android/NendAd;->mWebViewUrl:Ljava/lang/String;

    .line 47
    const/16 v0, 0x140

    iput v0, p0, Lnet/nend/android/NendAd;->mWidth:I

    .line 50
    const/16 v0, 0x32

    iput v0, p0, Lnet/nend/android/NendAd;->mHeight:I

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lnet/nend/android/NendAd;->mReloadIntervalInSeconds:I

    .line 62
    iput-object v1, p0, Lnet/nend/android/NendAd;->mListenerReference:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object v1, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-gtz p2, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Spot id is invalid. spot id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Api key is invalid. api key : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    iput-object p1, p0, Lnet/nend/android/NendAd;->mContext:Landroid/content/Context;

    .line 90
    iput-object p4, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    .line 91
    new-instance v0, Lnet/nend/android/NendAdRequest;

    invoke-direct {v0, p1, p2, p3}, Lnet/nend/android/NendAdRequest;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lnet/nend/android/NendAd;->mRequest:Lnet/nend/android/NendAdRequest;

    .line 92
    invoke-direct {p0, p1}, Lnet/nend/android/NendAd;->makeUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mUid:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private makeUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    sget-boolean v4, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 337
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/nend/android/NendHelper;->md5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "uid":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "NENDUUID"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    :try_start_0
    const-string v4, "NENDUUID"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 348
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 349
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 363
    :cond_1
    :try_start_1
    const-string v4, "NENDUUID"

    invoke-virtual {p1, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 364
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 365
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 366
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 350
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setAdViewParam(Lnet/nend/android/AdParameter;)V
    .locals 1
    .param p1, "response"    # Lnet/nend/android/AdParameter;

    .prologue
    .line 292
    sget-boolean v0, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :cond_0
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAd;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 299
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getReloadIntervalInSeconds()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/nend/android/NendAd;->setReloadIntervalInSeconds(I)V

    .line 300
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mImageUrl:Ljava/lang/String;

    .line 301
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mClickUrl:Ljava/lang/String;

    .line 302
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAd;->mHeight:I

    .line 303
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAd;->mWidth:I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mWebViewUrl:Ljava/lang/String;

    .line 305
    return-void
.end method

.method private setReloadIntervalInSeconds(I)V
    .locals 2
    .param p1, "reloadIntervalInSeconds"    # I

    .prologue
    const v0, 0x1869f

    const/16 v1, 0x1e

    .line 133
    if-le p1, v0, :cond_0

    .line 136
    iput v0, p0, Lnet/nend/android/NendAd;->mReloadIntervalInSeconds:I

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lnet/nend/android/NendHelper;->isDev()Z

    move-result v0

    if-nez v0, :cond_1

    if-le p1, v1, :cond_2

    .line 140
    :cond_1
    iput p1, p0, Lnet/nend/android/NendAd;->mReloadIntervalInSeconds:I

    goto :goto_0

    .line 142
    :cond_2
    iput v1, p0, Lnet/nend/android/NendAd;->mReloadIntervalInSeconds:I

    goto :goto_0
.end method

.method private setWebViewParam(Lnet/nend/android/AdParameter;)V
    .locals 2
    .param p1, "response"    # Lnet/nend/android/AdParameter;

    .prologue
    const/4 v1, 0x0

    .line 312
    sget-boolean v0, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_0
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAd;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 318
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getWebViewUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mWebViewUrl:Ljava/lang/String;

    .line 319
    iput-object v1, p0, Lnet/nend/android/NendAd;->mImageUrl:Ljava/lang/String;

    .line 320
    iput-object v1, p0, Lnet/nend/android/NendAd;->mClickUrl:Ljava/lang/String;

    .line 321
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getHeight()I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAd;->mHeight:I

    .line 322
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getWidth()I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAd;->mWidth:I

    .line 323
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/nend/android/DownloadTask;->cancel(Z)Z

    .line 176
    :cond_0
    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/nend/android/NendAd;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lnet/nend/android/NendAd;->mHeight:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/nend/android/NendAd;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lnet/nend/android/AdListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lnet/nend/android/NendAd;->mListenerReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lnet/nend/android/NendAd;->mListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/AdListener;

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReloadIntervalInSeconds()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lnet/nend/android/NendAd;->mReloadIntervalInSeconds:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lnet/nend/android/NendAd;->mRequest:Lnet/nend/android/NendAdRequest;

    iget-object v1, p0, Lnet/nend/android/NendAd;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdRequest;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/nend/android/NendAd;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Lnet/nend/android/AdParameter$ViewType;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/nend/android/NendAd;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lnet/nend/android/NendAd;->mWebViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/nend/android/NendAd;->mWidth:I

    return v0
.end method

.method public isRequestable()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    invoke-virtual {v0}, Lnet/nend/android/DownloadTask;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic makeResponse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/nend/android/NendAd;->makeResponse(Lorg/apache/http/HttpEntity;)Lnet/nend/android/AdParameter;

    move-result-object v0

    return-object v0
.end method

.method public makeResponse(Lorg/apache/http/HttpEntity;)Lnet/nend/android/AdParameter;
    .locals 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v1, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-object v1

    .line 215
    :cond_0
    :try_start_0
    new-instance v2, Lnet/nend/android/NendAdResponseParser;

    iget-object v3, p0, Lnet/nend/android/NendAd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnet/nend/android/NendAdResponseParser;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponseParser;->parseResponse(Ljava/lang/String;)Lnet/nend/android/AdParameter;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lorg/apache/http/ParseException;
    sget-boolean v2, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 219
    :cond_1
    sget-object v2, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v2, v0}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 223
    :cond_2
    sget-object v2, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v2, v0}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onDownload(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lnet/nend/android/AdParameter;

    invoke-virtual {p0, p1}, Lnet/nend/android/NendAd;->onDownload(Lnet/nend/android/AdParameter;)V

    return-void
.end method

.method public onDownload(Lnet/nend/android/AdParameter;)V
    .locals 8
    .param p1, "response"    # Lnet/nend/android/AdParameter;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 232
    const/4 v2, 0x1

    .line 235
    .local v2, "isEnableDisplay":Z
    invoke-virtual {p0}, Lnet/nend/android/NendAd;->getListener()Lnet/nend/android/AdListener;

    move-result-object v3

    .line 238
    .local v3, "listener":Lnet/nend/android/AdListener;
    if-eqz p1, :cond_4

    .line 244
    iget-object v5, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 245
    .local v0, "density":F
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v5, v0

    .line 246
    .local v4, "width":F
    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v1, v5, v0

    .line 247
    .local v1, "height":F
    div-float v5, v4, v7

    iget-object v6, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 248
    div-float v5, v1, v7

    iget-object v6, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 249
    iget-object v5, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 250
    iget-object v5, p0, Lnet/nend/android/NendAd;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    .line 251
    :cond_0
    const/4 v2, 0x0

    .line 252
    sget-object v5, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_TOO_LARGE:Lnet/nend/android/NendAdView$NendError;

    invoke-interface {v3, v5}, Lnet/nend/android/AdListener;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    .line 256
    :cond_1
    invoke-static {}, Lnet/nend/android/NendAd;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I

    move-result-object v5

    invoke-interface {p1}, Lnet/nend/android/AdParameter;->getViewType()Lnet/nend/android/AdParameter$ViewType;

    move-result-object v6

    invoke-virtual {v6}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 267
    sget-boolean v5, Lnet/nend/android/NendAd;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 259
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/nend/android/NendAd;->setAdViewParam(Lnet/nend/android/AdParameter;)V

    .line 276
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 277
    invoke-interface {v3}, Lnet/nend/android/AdListener;->onReceiveAd()V

    .line 285
    .end local v0    # "density":F
    .end local v1    # "height":F
    .end local v4    # "width":F
    :cond_2
    :goto_1
    return-void

    .line 263
    .restart local v0    # "density":F
    .restart local v1    # "height":F
    .restart local v4    # "width":F
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/nend/android/NendAd;->setWebViewParam(Lnet/nend/android/AdParameter;)V

    goto :goto_0

    .line 270
    :cond_3
    if-eqz v3, :cond_2

    .line 271
    sget-object v5, Lnet/nend/android/NendAdView$NendError;->INVALID_RESPONSE_TYPE:Lnet/nend/android/NendAdView$NendError;

    invoke-interface {v3, v5}, Lnet/nend/android/AdListener;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    goto :goto_1

    .line 281
    .end local v0    # "density":F
    .end local v1    # "height":F
    .end local v4    # "width":F
    :cond_4
    if-eqz v3, :cond_2

    .line 282
    sget-object v5, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_REQUEST:Lnet/nend/android/NendAdView$NendError;

    invoke-interface {v3, v5}, Lnet/nend/android/AdListener;->onFailedToReceiveAd(Lnet/nend/android/NendAdView$NendError;)V

    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/nend/android/NendAd;->mListenerReference:Ljava/lang/ref/WeakReference;

    .line 200
    return-void
.end method

.method public requestAd()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0}, Lnet/nend/android/NendAd;->isRequestable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Lnet/nend/android/DownloadTask;

    invoke-direct {v1, p0}, Lnet/nend/android/DownloadTask;-><init>(Lnet/nend/android/DownloadTask$Downloadable;)V

    iput-object v1, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    .line 165
    iget-object v1, p0, Lnet/nend/android/NendAd;->mTask:Lnet/nend/android/DownloadTask;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lnet/nend/android/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_0
    return v0
.end method

.method public setListener(Lnet/nend/android/AdListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/nend/android/AdListener;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/nend/android/NendAd;->mListenerReference:Ljava/lang/ref/WeakReference;

    .line 181
    return-void
.end method
