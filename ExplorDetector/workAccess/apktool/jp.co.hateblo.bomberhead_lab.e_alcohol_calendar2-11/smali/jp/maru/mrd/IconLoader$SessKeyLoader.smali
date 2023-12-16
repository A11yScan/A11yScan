.class Ljp/maru/mrd/IconLoader$SessKeyLoader;
.super Ljp/maru/mrd/HttpAgent;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessKeyLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljp/maru/mrd/HttpAgent",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Ljp/maru/mrd/HttpAgent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/maru/mrd/IconLoader$SessKeyLoader;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Ljp/maru/mrd/IconLoader$SessKeyLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljp/maru/mrd/IconLoader$SessKeyLoader;->baseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "getsess/g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/maru/mrd/IconLoader$SessKeyLoader;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 800
    const/16 v5, 0xc8

    new-array v0, v5, [B

    .line 801
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 803
    .local v3, "sessKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 804
    .local v2, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v3    # "sessKey":Ljava/lang/String;
    .local v4, "sessKey":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 812
    .end local v2    # "len":I
    .end local v4    # "sessKey":Ljava/lang/String;
    .restart local v3    # "sessKey":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 810
    :catch_1
    move-exception v5

    goto :goto_0

    .line 807
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 809
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 811
    :goto_1
    throw v5

    .line 810
    .end local v3    # "sessKey":Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v4    # "sessKey":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "sessKey":Ljava/lang/String;
    .restart local v3    # "sessKey":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "len":I
    :catch_3
    move-exception v6

    goto :goto_1
.end method
