.class final Lnet/nend/android/NendAdRequest;
.super Ljava/lang/Object;
.source "NendAdRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mDomain:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mProtocol:Ljava/lang/String;

.field private final mSpotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/nend/android/NendAdRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/NendAdRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spotId"    # I
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Context is null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_0
    if-gtz p2, :cond_1

    .line 48
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Spot id is invalid. spot id : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 50
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Api key is invalid. api key : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    :cond_3
    iput p2, p0, Lnet/nend/android/NendAdRequest;->mSpotId:I

    .line 55
    iput-object p3, p0, Lnet/nend/android/NendAdRequest;->mApiKey:Ljava/lang/String;

    .line 58
    const-string v4, "http"

    .line 59
    .local v4, "protocol":Ljava/lang/String;
    const-string v1, "ad1.nend.net"

    .line 60
    .local v1, "domain":Ljava/lang/String;
    const-string v3, "na.php"

    .line 62
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 64
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADSCHEME:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 65
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADSCHEME:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_4
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADAUTHORITY:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 68
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADAUTHORITY:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_5
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADPATH:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 71
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lnet/nend/android/NendConstants$MetaData;->ADPATH:Lnet/nend/android/NendConstants$MetaData;

    invoke-virtual {v6}, Lnet/nend/android/NendConstants$MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 79
    :cond_6
    iput-object v4, p0, Lnet/nend/android/NendAdRequest;->mProtocol:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lnet/nend/android/NendAdRequest;->mDomain:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lnet/nend/android/NendAdRequest;->mPath:Ljava/lang/String;

    .line 83
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-boolean v5, Lnet/nend/android/NendAdRequest;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    .line 79
    iput-object v4, p0, Lnet/nend/android/NendAdRequest;->mProtocol:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lnet/nend/android/NendAdRequest;->mDomain:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lnet/nend/android/NendAdRequest;->mPath:Ljava/lang/String;

    .line 82
    throw v5

    .line 77
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    :try_start_2
    sget-object v5, Lnet/nend/android/NendStatus;->ERR_UNEXPECTED:Lnet/nend/android/NendStatus;

    invoke-static {v5, v2}, Lnet/nend/android/NendLog;->d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iput-object v4, p0, Lnet/nend/android/NendAdRequest;->mProtocol:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lnet/nend/android/NendAdRequest;->mDomain:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lnet/nend/android/NendAdRequest;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method private getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "android"

    return-object v0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "2.2.0"

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID is invalid. uid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 131
    iget-object v1, p0, Lnet/nend/android/NendAdRequest;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lnet/nend/android/NendAdRequest;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lnet/nend/android/NendAdRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 134
    const-string v1, "apikey"

    iget-object v2, p0, Lnet/nend/android/NendAdRequest;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 135
    const-string v1, "spot"

    iget v2, p0, Lnet/nend/android/NendAdRequest;->mSpotId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 136
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 137
    const-string v1, "os"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    const-string v1, "version"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    const-string v1, "model"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 140
    const-string v1, "device"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 141
    const-string v1, "localize"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 142
    const-string v1, "sdkver"

    invoke-direct {p0}, Lnet/nend/android/NendAdRequest;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    const-string v1, "type"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0
.end method
