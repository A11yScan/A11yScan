.class Ljp/maru/mrd/IconLoader$ClickAgent;
.super Ljp/maru/mrd/HttpAgent;
.source "IconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickAgent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljp/maru/mrd/HttpAgent",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private _index:I

.field private _parent:Ljp/maru/mrd/IconLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/IconLoader",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 743
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    invoke-direct {p0}, Ljp/maru/mrd/HttpAgent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/maru/mrd/IconLoader$ClickAgent;)V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljp/maru/mrd/IconLoader$ClickAgent;-><init>()V

    return-void
.end method

.method static synthetic access$2(Ljp/maru/mrd/IconLoader$ClickAgent;Ljp/maru/mrd/IconLoader;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_parent:Ljp/maru/mrd/IconLoader;

    return-void
.end method

.method static synthetic access$3(Ljp/maru/mrd/IconLoader$ClickAgent;I)V
    .locals 0

    .prologue
    .line 746
    iput p1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_index:I

    return-void
.end method


# virtual methods
.method public getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljp/maru/mrd/IconLoader$ClickAgent;->baseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_parent:Ljp/maru/mrd/IconLoader;

    invoke-static {v1}, Ljp/maru/mrd/IconLoader;->access$1(Ljp/maru/mrd/IconLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/click.cgi?idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ucd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljp/maru/mrd/IconLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isStatusLineValid(Lorg/apache/http/StatusLine;)Z
    .locals 2
    .param p1, "statusLine"    # Lorg/apache/http/StatusLine;

    .prologue
    .line 756
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 757
    .local v0, "sts":I
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 758
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic readContentFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/maru/mrd/IconLoader$ClickAgent;->readContentFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readContentFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 770
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    const-string v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 771
    .local v0, "headers":[Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 772
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 777
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_parent:Ljp/maru/mrd/IconLoader;

    invoke-static {v1, p0}, Ljp/maru/mrd/IconLoader;->access$2(Ljp/maru/mrd/IconLoader;Ljava/lang/Runnable;)V

    .line 778
    invoke-virtual {p0}, Ljp/maru/mrd/IconLoader$ClickAgent;->startSending()V

    .line 779
    invoke-virtual {p0}, Ljp/maru/mrd/IconLoader$ClickAgent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 780
    .local v0, "lpURL":Ljava/lang/String;
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v1, :cond_0

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clickent("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/maru/mrd/IconLoader$ClickAgent;->getURLString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") \n lpURL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    if-eqz v0, :cond_1

    .line 783
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_parent:Ljp/maru/mrd/IconLoader;

    invoke-static {v1, v0}, Ljp/maru/mrd/IconLoader;->access$3(Ljp/maru/mrd/IconLoader;Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$ClickAgent;->_parent:Ljp/maru/mrd/IconLoader;

    invoke-static {v1}, Ljp/maru/mrd/IconLoader;->access$4(Ljp/maru/mrd/IconLoader;)V

    goto :goto_0
.end method

.method protected shouldRedirectAutomatically()Z
    .locals 1

    .prologue
    .line 764
    .local p0, "this":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader<TT;>.ClickAgent<TU;>;"
    const/4 v0, 0x0

    return v0
.end method
