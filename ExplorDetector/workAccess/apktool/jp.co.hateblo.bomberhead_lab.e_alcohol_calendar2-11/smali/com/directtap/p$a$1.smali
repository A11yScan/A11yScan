.class Lcom/directtap/p$a$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p$a;->a()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/p$a;


# direct methods
.method constructor <init>(Lcom/directtap/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to load in the webview in uniqueId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v2, v2, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget v2, v2, Lcom/directtap/p;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v2, v2, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v2}, Lcom/directtap/p;->o(Lcom/directtap/p;)J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error because can\'t display in uniqueId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget-object v0, v0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/directtap/p;->a(Lcom/directtap/p;IZ)V

    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$a$1;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->c(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
