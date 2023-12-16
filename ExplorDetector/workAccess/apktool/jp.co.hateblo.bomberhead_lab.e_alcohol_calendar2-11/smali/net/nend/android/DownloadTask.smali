.class final Lnet/nend/android/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/DownloadTask$Downloadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/nend/android/DownloadTask$Downloadable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/nend/android/DownloadTask$Downloadable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/nend/android/DownloadTask$Downloadable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lnet/nend/android/DownloadTask;, "Lnet/nend/android/DownloadTask<TT;>;"
    .local p1, "downloadable":Lnet/nend/android/DownloadTask$Downloadable;, "Lnet/nend/android/DownloadTask$Downloadable<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/nend/android/DownloadTask;->mReference:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method static synthetic access$1(Lnet/nend/android/DownloadTask;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/nend/android/DownloadTask;->mReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/nend/android/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnet/nend/android/DownloadTask;, "Lnet/nend/android/DownloadTask<TT;>;"
    const/4 v5, 0x0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 65
    invoke-virtual {p0}, Lnet/nend/android/DownloadTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    :goto_0
    return-object v5

    .line 69
    :cond_0
    iget-object v6, p0, Lnet/nend/android/DownloadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/nend/android/DownloadTask$Downloadable;

    .line 71
    .local v1, "downloadable":Lnet/nend/android/DownloadTask$Downloadable;, "Lnet/nend/android/DownloadTask$Downloadable<TT;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnet/nend/android/DownloadTask$Downloadable;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Lnet/nend/android/DownloadTask$Downloadable;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 72
    invoke-interface {v1}, Lnet/nend/android/DownloadTask$Downloadable;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "requestUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Download from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/nend/android/NendLog;->v(Ljava/lang/String;)I

    .line 75
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 78
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v3, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    const/16 v6, 0x2710

    invoke-static {v3, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    const-string v6, "start request!"

    invoke-static {v6}, Lnet/nend/android/NendLog;->d(Ljava/lang/String;)I

    .line 91
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v7, Lnet/nend/android/DownloadTask$1;

    invoke-direct {v7, p0, v4}, Lnet/nend/android/DownloadTask$1;-><init>(Lnet/nend/android/DownloadTask;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 124
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    sget-object v6, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v6, v2}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 126
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v6, v2}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    sget-object v6, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v6, v2}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 133
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    sget-object v6, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    invoke-static {v6, v2}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 137
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    .line 138
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 139
    throw v5

    .line 142
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "requestUrl":Ljava/lang/String;
    :cond_1
    sget-object v6, Lnet/nend/android/NendStatus;->ERR_INVALID_URL:Lnet/nend/android/NendStatus;

    invoke-static {v6}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;)I

    goto/16 :goto_0
.end method

.method isFinished()Z
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Lnet/nend/android/DownloadTask;, "Lnet/nend/android/DownloadTask<TT;>;"
    invoke-virtual {p0}, Lnet/nend/android/DownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lnet/nend/android/DownloadTask;, "Lnet/nend/android/DownloadTask<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lnet/nend/android/DownloadTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/DownloadTask$Downloadable;

    .line 152
    .local v0, "downloadable":Lnet/nend/android/DownloadTask$Downloadable;, "Lnet/nend/android/DownloadTask$Downloadable<TT;>;"
    invoke-virtual {p0}, Lnet/nend/android/DownloadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1}, Lnet/nend/android/DownloadTask$Downloadable;->onDownload(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method
