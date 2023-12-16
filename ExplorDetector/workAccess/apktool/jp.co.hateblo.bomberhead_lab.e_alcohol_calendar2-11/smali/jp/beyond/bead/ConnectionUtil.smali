.class Ljp/beyond/bead/ConnectionUtil;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;
    }
.end annotation


# static fields
.field private static final COOKIE_SPLIT_REG:Ljava/lang/String; = "[;,]"

.field public static final EXPIRY_KEY:Ljava/lang/String; = "expiry"

.field private static final TIMEOUT:I = 0x186a0

.field private static mUserAgentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Ljp/beyond/bead/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljp/beyond/bead/ConnectionUtil;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1}, Ljp/beyond/bead/ConnectionUtil;->getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookie()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 232
    .local v1, "cookieText":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 233
    .local v0, "cm":Landroid/webkit/CookieManager;
    const-string v7, ".exit-ad.com"

    invoke-virtual {v0, v7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    .end local v0    # "cm":Landroid/webkit/CookieManager;
    :goto_0
    if-nez v1, :cond_1

    .line 257
    :cond_0
    return-object v2

    .line 234
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v9, "cookie error"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v7, "[;,]"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "params":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 245
    .restart local v2    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v4, v5, v7

    .line 247
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "values":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 245
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 254
    :cond_2
    aget-object v10, v6, v8

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static getCookieExpiry(Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 268
    .local v2, "expiryTime":J
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, "expiryText":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 277
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    :goto_0
    return-wide v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v4

    .line 277
    const-string v5, "expiry"

    invoke-interface {p0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    throw v4
.end method

.method private getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 159
    const-string v2, ""

    .line 160
    .local v2, "entityString":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 163
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 170
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 176
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, "e":Landroid/net/ParseException;
    :try_start_4
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 171
    :catch_3
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 170
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 174
    :goto_1
    throw v3

    .line 171
    :catch_4
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "response error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 76
    sput-object p0, Ljp/beyond/bead/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public request(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookieStoreInterface"    # Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;

    .prologue
    const v9, 0x186a0

    .line 88
    const/4 v5, 0x0

    .line 90
    .local v5, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v6, v5

    .line 149
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 94
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 95
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 98
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_2

    .line 99
    invoke-interface {p3, p1, v1}, Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;->setCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 103
    :cond_2
    sget-object v7, Ljp/beyond/bead/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 104
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 105
    .local v3, "param":Lorg/apache/http/params/HttpParams;
    const-string v7, "http.useragent"

    sget-object v8, Ljp/beyond/bead/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 109
    .end local v3    # "param":Lorg/apache/http/params/HttpParams;
    :cond_3
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 113
    :try_start_0
    new-instance v7, Ljp/beyond/bead/ConnectionUtil$1;

    invoke-direct {v7, p0}, Ljp/beyond/bead/ConnectionUtil$1;-><init>(Ljp/beyond/bead/ConnectionUtil;)V

    invoke-virtual {v1, v4, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 137
    if-eqz p3, :cond_4

    .line 138
    invoke-interface {p3, p1, v1}, Ljp/beyond/bead/ConnectionUtil$CookieStoreInterface;->receiveCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_4
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_1
    move-object v6, v5

    .line 149
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    sget-object v7, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v8, "request error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 143
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v8, "request error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 145
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 146
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 147
    throw v7
.end method

.method public requestImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v2, v1

    .line 219
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 192
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    .line 196
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 198
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 199
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 201
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 203
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 205
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_2
    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    move-object v2, v1

    .line 219
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 209
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    .line 214
    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 211
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 212
    .local v4, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 214
    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 213
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 214
    if-eqz v3, :cond_4

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    :cond_4
    throw v7
.end method
