.class Ljp/beyond/bead/ConnectionUtil$1;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/bead/ConnectionUtil;->request(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/bead/ConnectionUtil;


# direct methods
.method constructor <init>(Ljp/beyond/bead/ConnectionUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/bead/ConnectionUtil$1;->this$0:Ljp/beyond/bead/ConnectionUtil;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/beyond/bead/ConnectionUtil$1;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "responseString":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 122
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-object v1

    .line 124
    :pswitch_0
    iget-object v2, p0, Ljp/beyond/bead/ConnectionUtil$1;->this$0:Ljp/beyond/bead/ConnectionUtil;

    invoke-static {v2, p1}, Ljp/beyond/bead/ConnectionUtil;->access$0(Ljp/beyond/bead/ConnectionUtil;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 125
    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
