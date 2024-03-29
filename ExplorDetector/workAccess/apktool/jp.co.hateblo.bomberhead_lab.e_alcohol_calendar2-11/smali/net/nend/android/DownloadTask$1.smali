.class Lnet/nend/android/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nend/android/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/nend/android/DownloadTask;

.field private final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/nend/android/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/nend/android/DownloadTask$1;->this$0:Lnet/nend/android/DownloadTask;

    iput-object p2, p0, Lnet/nend/android/DownloadTask$1;->val$requestUrl:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
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
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v1, "get response!"

    invoke-static {v1}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lnet/nend/android/DownloadTask$1;->this$0:Lnet/nend/android/DownloadTask;

    invoke-virtual {v1}, Lnet/nend/android/DownloadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lnet/nend/android/DownloadTask$1;->this$0:Lnet/nend/android/DownloadTask;

    invoke-static {v1}, Lnet/nend/android/DownloadTask;->access$1(Lnet/nend/android/DownloadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/DownloadTask$Downloadable;

    .line 111
    .local v0, "downloadable":Lnet/nend/android/DownloadTask$Downloadable;, "Lnet/nend/android/DownloadTask$Downloadable<TT;>;"
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/nend/android/DownloadTask$Downloadable;->makeResponse(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .end local v0    # "downloadable":Lnet/nend/android/DownloadTask$Downloadable;, "Lnet/nend/android/DownloadTask$Downloadable<TT;>;"
    :goto_0
    return-object v1

    .line 116
    :cond_0
    iget-object v1, p0, Lnet/nend/android/DownloadTask$1;->this$0:Lnet/nend/android/DownloadTask;

    invoke-virtual {v1}, Lnet/nend/android/DownloadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    sget-object v1, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/String;)I

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
