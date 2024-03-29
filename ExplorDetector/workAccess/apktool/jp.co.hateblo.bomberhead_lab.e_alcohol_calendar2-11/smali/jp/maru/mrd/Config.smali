.class abstract Ljp/maru/mrd/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field protected static final BASE_URL_:Ljava/lang/String;

.field protected static final BASE_URL_DEFAULT:Ljava/lang/String; = "http://android.public.astrsk.net/"

.field protected static final LOG_LEVEL_:I

.field protected static final LOG_LEVEL_DEFAULT:I = 0x0

.field protected static final LOG_TAG_:Ljava/lang/String; = "mrd"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 19
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 21
    .local v1, "props":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 23
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    const-class v4, Ljp/maru/mrd/Config;

    const-string v5, "Config.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 34
    :cond_0
    :goto_0
    const-string v4, "BASE_URL"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_3

    .end local v2    # "s":Ljava/lang/String;
    :goto_1
    sput-object v2, Ljp/maru/mrd/Config;->BASE_URL_:Ljava/lang/String;

    .line 37
    const-string v4, "LOG_LEVEL"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .restart local v2    # "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 39
    .local v0, "lv":I
    if-eqz v2, :cond_1

    .line 41
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    .line 42
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 45
    :cond_1
    :goto_2
    sput v0, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    .line 7
    return-void

    .line 25
    .end local v0    # "lv":I
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 27
    if-eqz v3, :cond_0

    .line 28
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v4

    .line 27
    if-eqz v3, :cond_2

    .line 28
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 30
    :cond_2
    :goto_3
    throw v4

    .line 35
    .restart local v2    # "s":Ljava/lang/String;
    :cond_3
    const-string v2, "http://android.public.astrsk.net/"

    goto :goto_1

    .line 28
    .end local v2    # "s":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_0

    .line 43
    .restart local v0    # "lv":I
    .restart local v2    # "s":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
