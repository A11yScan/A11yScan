.class Ljp/beyond/bead/BeadConnection;
.super Ljava/lang/Object;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;,
        Ljp/beyond/bead/BeadConnection$RequestStatus;
    }
.end annotation


# static fields
.field private static final EXIST_ADDATA_FILE_FLAG:C = '\u0001'

.field private static final EXIST_ADIMAGE_FILE_FLAG:C = '\u0010'

.field public static final FILENAME_DATA:Ljava/lang/String; = "__bead_opt_data__"

.field public static final FILENAME_IMAGE:Ljava/lang/String; = "__bead_opt_image__"

.field private static final LANDSCAPE_NAME:Ljava/lang/String; = "landscape"

.field private static final PARAM_AID:Ljava/lang/String; = "aid"

.field private static final PARAM_APP:Ljava/lang/String; = "app"

.field private static final PARAM_COUNT:Ljava/lang/String; = "count"

.field private static final PARAM_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final PARAM_SID:Ljava/lang/String; = "sid"

.field private static final PORTRAIT_NAME:Ljava/lang/String; = "portrait"

.field public static final REQUEST_URL_DOMAIN:Ljava/lang/String; = ".exit-ad.com"

.field private static final REQUEST_URL_HOST:Ljava/lang/String; = "d"

.field private static final REQUEST_URL_PATH:Ljava/lang/String; = "/ad/json/"

.field private static final REQUEST_URL_SCHEME:Ljava/lang/String; = "http"


# instance fields
.field private mAdIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionUtil:Ljp/beyond/bead/ConnectionUtil;

.field private mContext:Landroid/content/Context;

.field private mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

.field private mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

.field private mRotationCount:I

.field private mSid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/bead/Bead$ContentsOrientation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "orientation"    # Ljp/beyond/bead/Bead$ContentsOrientation;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/bead/BeadConnection;->mRotationCount:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mAdIdList:Ljava/util/List;

    .line 76
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mSid:Ljava/lang/String;

    .line 85
    new-instance v0, Ljp/beyond/bead/ConnectionUtil;

    invoke-direct {v0}, Ljp/beyond/bead/ConnectionUtil;-><init>()V

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mConnectionUtil:Ljp/beyond/bead/ConnectionUtil;

    .line 106
    sget-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection;->mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 123
    iput-object p1, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Ljp/beyond/bead/BeadConnection;->mSid:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Ljp/beyond/bead/BeadConnection;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 126
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/bead/BeadConnection;Ljp/beyond/bead/BeadConnection$RequestStatus;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ljp/beyond/bead/BeadConnection;->mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

    return-void
.end method

.method static synthetic access$1(Ljp/beyond/bead/BeadConnection;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Ljp/beyond/bead/BeadConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljp/beyond/bead/BeadConnection;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Ljp/beyond/bead/BeadConnection;->mRotationCount:I

    return v0
.end method

.method static synthetic access$4(Ljp/beyond/bead/BeadConnection;Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/bead/BeadData;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljp/beyond/bead/BeadConnection;->requestAdData(Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/bead/BeadData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Ljp/beyond/bead/BeadConnection;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1}, Ljp/beyond/bead/BeadConnection;->requestAdImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljp/beyond/bead/BeadConnection;I)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Ljp/beyond/bead/BeadConnection;->addAdIdList(I)V

    return-void
.end method

.method static synthetic access$7(Ljp/beyond/bead/BeadConnection;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljp/beyond/bead/BeadConnection;->addRotationCount()V

    return-void
.end method

.method private addAdIdList(I)V
    .locals 2
    .param p1, "adId"    # I

    .prologue
    .line 366
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addRotationCount()V
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Ljp/beyond/bead/BeadConnection;->mRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/beyond/bead/BeadConnection;->mRotationCount:I

    .line 357
    return-void
.end method

.method private convertAdIdListString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 382
    .local v1, "isFirst":Z
    iget-object v3, p0, Ljp/beyond/bead/BeadConnection;->mAdIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 382
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 384
    .local v0, "adId":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 385
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestAdData(Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/bead/BeadData;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, "adData":Ljp/beyond/bead/BeadData;
    iget-object v3, p0, Ljp/beyond/bead/BeadConnection;->mConnectionUtil:Ljp/beyond/bead/ConnectionUtil;

    new-instance v4, Ljp/beyond/bead/BeadCookieStoreRunnable;

    invoke-direct {v4}, Ljp/beyond/bead/BeadCookieStoreRunnable;-><init>()V

    invoke-virtual {v3, p1, p2, v4}, Ljp/beyond/bead/ConnectionUtil;->request(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "responseString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 172
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "fail receive ad"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 191
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .local v1, "adData":Ljp/beyond/bead/BeadData;
    :goto_0
    return-object v1

    .line 175
    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :cond_0
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "empty ad"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 179
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_0

    .line 183
    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :cond_1
    invoke-static {v2}, Ljp/beyond/bead/BeadResponseParser;->parseJson(Ljava/lang/String;)Ljp/beyond/bead/BeadData;

    move-result-object v0

    .line 185
    if-nez v0, :cond_2

    .line 187
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "empty ad"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 188
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_0

    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :cond_2
    move-object v1, v0

    .line 191
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_0
.end method

.method private requestAdImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Ljp/beyond/bead/BeadConnection;->mConnectionUtil:Ljp/beyond/bead/ConnectionUtil;

    invoke-virtual {v1, p1}, Ljp/beyond/bead/ConnectionUtil;->requestImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "adImage":Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method public deleteFiles()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljp/beyond/bead/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 316
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljp/beyond/bead/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeRequest()V
    .locals 5

    .prologue
    .line 133
    sget-object v3, Ljp/beyond/bead/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    iput-object v3, p0, Ljp/beyond/bead/BeadConnection;->mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 135
    iget-object v3, p0, Ljp/beyond/bead/BeadConnection;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljp/beyond/bead/BeadConnection;->deleteFiles()V

    .line 144
    :try_start_0
    invoke-direct {p0}, Ljp/beyond/bead/BeadConnection;->convertAdIdListString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "adIdList":Ljava/lang/String;
    new-instance v2, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;

    invoke-direct {v2, p0, v0}, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;-><init>(Ljp/beyond/bead/BeadConnection;Ljava/lang/String;)V

    .line 146
    .local v2, "requestTask":Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "adIdList":Ljava/lang/String;
    .end local v2    # "requestTask":Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "request failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    iput-object v3, p0, Ljp/beyond/bead/BeadConnection;->mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

    goto :goto_0
.end method

.method public existFiles(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const/4 v3, 0x0

    .line 328
    .local v3, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v3

    .line 349
    .end local v3    # "isExist":Z
    .local v4, "isExist":I
    :goto_0
    return v4

    .line 333
    .end local v4    # "isExist":I
    .restart local v3    # "isExist":Z
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "checkedFile":C
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_2

    .line 345
    const/16 v5, 0x11

    if-ne v0, v5, :cond_1

    .line 346
    const/4 v3, 0x1

    :cond_1
    move v4, v3

    .line 349
    .restart local v4    # "isExist":I
    goto :goto_0

    .line 334
    .end local v4    # "isExist":I
    :cond_2
    aget-object v1, v2, v5

    .line 337
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0}, Ljp/beyond/bead/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 338
    or-int/lit8 v7, v0, 0x1

    int-to-char v0, v7

    .line 334
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual {p0}, Ljp/beyond/bead/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    or-int/lit8 v7, v0, 0x10

    int-to-char v0, v7

    goto :goto_2
.end method

.method public getAdDataFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "__bead_opt_data__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Ljp/beyond/bead/BeadConnection;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdImageFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "__bead_opt_image__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Ljp/beyond/bead/BeadConnection;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "orientation"    # Ljava/lang/String;
    .param p3, "rotationCount"    # I
    .param p4, "adIdList"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v1, ""

    .line 218
    .local v1, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 247
    .end local v1    # "url":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 222
    .end local v2    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 223
    .local v0, "uri":Landroid/net/Uri$Builder;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 224
    const-string v3, "d.exit-ad.com"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 225
    const-string v3, "/ad/json/"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    const-string v3, "sid"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    if-eqz p2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    const-string v3, "orientation"

    invoke-virtual {v0, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    :cond_2
    const-string v3, "app"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 239
    const-string v3, "count"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 242
    const-string v3, ""

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    const-string v3, "aid"

    invoke-virtual {v0, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 247
    .end local v1    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v1, ""

    .line 259
    .local v1, "result":Ljava/lang/String;
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 263
    .local v0, "orientation":Ljp/beyond/bead/Bead$ContentsOrientation;
    sget-object v2, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    if-ne v2, v0, :cond_0

    .line 265
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    .line 266
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Landscape:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 272
    :cond_0
    :goto_0
    sget-object v2, Ljp/beyond/bead/Bead$ContentsOrientation;->Landscape:Ljp/beyond/bead/Bead$ContentsOrientation;

    if-ne v2, v0, :cond_2

    .line 273
    const-string v1, "landscape"

    .line 278
    :goto_1
    return-object v1

    .line 268
    :cond_1
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Portrait:Ljp/beyond/bead/Bead$ContentsOrientation;

    goto :goto_0

    .line 275
    :cond_2
    const-string v1, "portrait"

    goto :goto_1
.end method

.method public getRequestStatus()Ljp/beyond/bead/BeadConnection$RequestStatus;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection;->mRequestStatus:Ljp/beyond/bead/BeadConnection$RequestStatus;

    return-object v0
.end method
