.class abstract Ljp/maru/mrd/HttpAgent;
.super Ljava/lang/Object;
.source "HttpAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/maru/mrd/HttpAgent$Loader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static _baseUAString:Ljava/lang/String;

.field private static final _baseURL:Ljava/lang/String;

.field private static _exec:Ljava/util/concurrent/ExecutorService;

.field private static _pkgInfo:Landroid/content/pm/PackageInfo;

.field private static _uaAppInfoSuffix:Ljava/lang/String;


# instance fields
.field private _pendingResult:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 33
    const-string v4, ""

    sput-object v4, Ljp/maru/mrd/HttpAgent;->_uaAppInfoSuffix:Ljava/lang/String;

    .line 34
    const/4 v4, 0x0

    sput-object v4, Ljp/maru/mrd/HttpAgent;->_pkgInfo:Landroid/content/pm/PackageInfo;

    .line 41
    sget-object v4, Ljp/maru/mrd/Config;->BASE_URL_:Ljava/lang/String;

    sput-object v4, Ljp/maru/mrd/HttpAgent;->_baseURL:Ljava/lang/String;

    .line 42
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    .local v2, "model":Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 44
    .local v1, "buildVersion":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 46
    .local v0, "brand":Ljava/lang/String;
    const-string v4, "Mrd/1.1.2 (Linux; U; Android %s; %s %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 47
    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 46
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "uaStr":Ljava/lang/String;
    sput-object v3, Ljp/maru/mrd/HttpAgent;->_baseUAString:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Ljp/maru/mrd/HttpAgent;->_exec:Ljava/util/concurrent/ExecutorService;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/maru/mrd/HttpAgent;->_pendingResult:Ljava/util/concurrent/Future;

    .line 29
    return-void
.end method

.method private _handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 171
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    sget v0, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v0, :cond_0

    .line 172
    const-string v0, "mrd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception on load:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->getURLString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :cond_0
    return-void
.end method

.method protected static baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Ljp/maru/mrd/HttpAgent;->_baseURL:Ljava/lang/String;

    return-object v0
.end method

.method protected static registerPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 55
    sget-object v2, Ljp/maru/mrd/HttpAgent;->_pkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    sput-object p0, Ljp/maru/mrd/HttpAgent;->_pkgInfo:Landroid/content/pm/PackageInfo;

    .line 57
    sget-object v2, Ljp/maru/mrd/HttpAgent;->_pkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 58
    .local v0, "pkgName":Ljava/lang/String;
    sget-object v2, Ljp/maru/mrd/HttpAgent;->_pkgInfo:Landroid/content/pm/PackageInfo;

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 59
    .local v1, "pkgVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljp/maru/mrd/HttpAgent;->_uaAppInfoSuffix:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    iget-object v0, p0, Ljp/maru/mrd/HttpAgent;->_pendingResult:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/maru/mrd/HttpAgent;->_pendingResult:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getConnectionTimeout()I
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    const/16 v0, 0x2710

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    :try_start_0
    iget-object v1, p0, Ljp/maru/mrd/HttpAgent;->_pendingResult:Ljava/util/concurrent/Future;

    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->getConnectionTimeout()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0, v0}, Ljp/maru/mrd/HttpAgent;->_handleException(Ljava/lang/Exception;)V

    .line 166
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-direct {p0, v0}, Ljp/maru/mrd/HttpAgent;->_handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public abstract getURLString()Ljava/lang/String;
.end method

.method protected getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljp/maru/mrd/HttpAgent;->_baseUAString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljp/maru/mrd/HttpAgent;->_uaAppInfoSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleResponse_(Lorg/apache/http/HttpResponse;Ljp/maru/mrd/HttpAgent$Loader;)Ljava/lang/Object;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Ljp/maru/mrd/HttpAgent$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    .local p2, "loader":Ljp/maru/mrd/HttpAgent$Loader;, "Ljp/maru/mrd/HttpAgent$Loader<TT;>;"
    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 112
    .local v2, "statusLine":Lorg/apache/http/StatusLine;
    invoke-virtual {p0, v2}, Ljp/maru/mrd/HttpAgent;->isStatusLineValid(Lorg/apache/http/StatusLine;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 123
    :try_start_1
    iget-object v3, p2, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .end local v2    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-object v1

    .line 124
    .restart local v2    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/RuntimeException;
    sget v3, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v3, :cond_0

    .line 126
    const-string v3, "mrd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Ljp/maru/mrd/HttpAgent;->readContentFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 123
    .local v1, "result":Ljava/lang/Object;, "TT;"
    :try_start_3
    iget-object v3, p2, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget v3, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v3, :cond_0

    .line 126
    const-string v3, "mrd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-direct {p0, v0}, Ljp/maru/mrd/HttpAgent;->_handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :try_start_5
    iget-object v3, p2, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 124
    :catch_3
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/RuntimeException;
    sget v3, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v3, :cond_0

    .line 126
    const-string v3, "mrd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-direct {p0, v0}, Ljp/maru/mrd/HttpAgent;->_handleException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    :try_start_7
    iget-object v3, p2, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 124
    :catch_5
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/RuntimeException;
    sget v3, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v3, :cond_0

    .line 126
    const-string v3, "mrd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 123
    :try_start_8
    iget-object v4, p2, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 129
    :cond_2
    :goto_1
    throw v3

    .line 124
    :catch_6
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget v4, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v4, :cond_2

    .line 126
    const-string v4, "mrd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected isStatusLineValid(Lorg/apache/http/StatusLine;)Z
    .locals 2
    .param p1, "statusLine"    # Lorg/apache/http/StatusLine;

    .prologue
    .line 92
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeHttpGet()Lorg/apache/http/client/methods/HttpGet;
    .locals 6

    .prologue
    .line 70
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->getURLString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "urlString":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "User-Agent"

    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "localeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    const-string v3, "Accept-Language"

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-object v1
.end method

.method protected readContentFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp/maru/mrd/HttpAgent;->readStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method protected readStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shouldRedirectAutomatically()Z
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public startSending()V
    .locals 6

    .prologue
    .line 134
    .local p0, "this":Ljp/maru/mrd/HttpAgent;, "Ljp/maru/mrd/HttpAgent<TT;>;"
    new-instance v1, Ljp/maru/mrd/HttpAgent$Loader;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Ljp/maru/mrd/HttpAgent$Loader;-><init>(Ljp/maru/mrd/HttpAgent$Loader;)V

    .line 135
    .local v1, "loader":Ljp/maru/mrd/HttpAgent$Loader;, "Ljp/maru/mrd/HttpAgent$Loader<TT;>;"
    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->makeHttpGet()Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 136
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    iput-object v3, v1, Ljp/maru/mrd/HttpAgent$Loader;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 137
    iput-object p0, v1, Ljp/maru/mrd/HttpAgent$Loader;->parent:Ljp/maru/mrd/HttpAgent;

    .line 138
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 139
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->shouldRedirectAutomatically()Z

    move-result v5

    invoke-static {v2, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 141
    invoke-virtual {p0}, Ljp/maru/mrd/HttpAgent;->getConnectionTimeout()I

    move-result v4

    .line 142
    .local v4, "timeout":I
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 143
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 144
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 145
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iput-object v0, v1, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 147
    sget-object v5, Ljp/maru/mrd/HttpAgent;->_exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, p0, Ljp/maru/mrd/HttpAgent;->_pendingResult:Ljava/util/concurrent/Future;

    .line 148
    return-void
.end method
