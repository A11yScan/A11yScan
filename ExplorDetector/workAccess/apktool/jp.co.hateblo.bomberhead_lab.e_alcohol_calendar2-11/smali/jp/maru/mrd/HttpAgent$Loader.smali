.class Ljp/maru/mrd/HttpAgent$Loader;
.super Ljava/lang/Object;
.source "HttpAgent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/HttpAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected parent:Ljp/maru/mrd/HttpAgent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/HttpAgent",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected request:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    .local p0, "this":Ljp/maru/mrd/HttpAgent$Loader;, "Ljp/maru/mrd/HttpAgent<TT;>.Loader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/maru/mrd/HttpAgent$Loader;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljp/maru/mrd/HttpAgent$Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Ljp/maru/mrd/HttpAgent$Loader;, "Ljp/maru/mrd/HttpAgent<TT;>.Loader<TT;>;"
    sget v2, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "mrd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " loader.call() ; parent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/maru/mrd/HttpAgent$Loader;->parent:Ljp/maru/mrd/HttpAgent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v2, p0, Ljp/maru/mrd/HttpAgent$Loader;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Ljp/maru/mrd/HttpAgent$Loader;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 187
    .local v0, "response":Lorg/apache/http/HttpResponse;
    sget v2, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v2, :cond_1

    const-string v2, "mrd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " loader.call() ; respoonse:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-object v2, p0, Ljp/maru/mrd/HttpAgent$Loader;->parent:Ljp/maru/mrd/HttpAgent;

    invoke-virtual {v2, v0, p0}, Ljp/maru/mrd/HttpAgent;->handleResponse_(Lorg/apache/http/HttpResponse;Ljp/maru/mrd/HttpAgent$Loader;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1
.end method
