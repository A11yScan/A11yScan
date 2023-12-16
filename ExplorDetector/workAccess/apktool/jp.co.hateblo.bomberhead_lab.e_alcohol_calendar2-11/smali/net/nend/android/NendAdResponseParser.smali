.class final Lnet/nend/android/NendAdResponseParser;
.super Ljava/lang/Object;
.source "NendAdResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/NendAdResponseParser$JsonParam;,
        Lnet/nend/android/NendAdResponseParser$ResponseType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$nend$android$NendAdResponseParser$ResponseType:[I = null

.field static final synthetic $assertionsDisabled:Z

.field private static final RESPONSE_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic $SWITCH_TABLE$net$nend$android$NendAdResponseParser$ResponseType()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lnet/nend/android/NendAdResponseParser;->$SWITCH_TABLE$net$nend$android$NendAdResponseParser$ResponseType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/nend/android/NendAdResponseParser$ResponseType;->values()[Lnet/nend/android/NendAdResponseParser$ResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/nend/android/NendAdResponseParser$ResponseType;->APP_TARGETING:Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-virtual {v1}, Lnet/nend/android/NendAdResponseParser$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/nend/android/NendAdResponseParser$ResponseType;->NORMAL:Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-virtual {v1}, Lnet/nend/android/NendAdResponseParser$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/nend/android/NendAdResponseParser$ResponseType;->UNSUPPORTED:Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-virtual {v1}, Lnet/nend/android/NendAdResponseParser$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/nend/android/NendAdResponseParser$ResponseType;->WEB_VIEW:Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-virtual {v1}, Lnet/nend/android/NendAdResponseParser$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/nend/android/NendAdResponseParser;->$SWITCH_TABLE$net$nend$android$NendAdResponseParser$ResponseType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnet/nend/android/NendAdResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/nend/android/NendAdResponseParser;->$assertionsDisabled:Z

    .line 24
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_CONTEXT:Lnet/nend/android/NendStatus;

    invoke-virtual {v1}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponseParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    return-void
.end method

.method private getAppTargetingAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;
    .locals 10
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/nend/android/NendException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v8, "targeting_ads"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 240
    .local v7, "targetingAdArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "iEnd":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 266
    const-string v8, "default_ad"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 267
    new-instance v8, Lnet/nend/android/NendException;

    sget-object v9, Lnet/nend/android/NendStatus;->ERR_OUT_OF_STOCK:Lnet/nend/android/NendStatus;

    invoke-direct {v8, v9}, Lnet/nend/android/NendException;-><init>(Lnet/nend/android/NendStatus;)V

    throw v8

    .line 241
    :cond_0
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 242
    .local v6, "targetingAd":Lorg/json/JSONObject;
    const-string v8, "conditions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 243
    .local v1, "conditionArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "jEnd":I
    :goto_1
    if-lt v4, v5, :cond_1

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {p0, v8}, Lnet/nend/android/NendAdResponseParser;->isTarget(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    new-instance v8, Lnet/nend/android/NendAdResponse$Builder;

    invoke-direct {v8}, Lnet/nend/android/NendAdResponse$Builder;-><init>()V

    .line 246
    sget-object v9, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v8, v9}, Lnet/nend/android/NendAdResponse$Builder;->setViewType(Lnet/nend/android/AdParameter$ViewType;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v8

    .line 247
    const-string v9, "image_url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/nend/android/NendAdResponse$Builder;->setImageUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v8

    .line 248
    const-string v9, "click_url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/nend/android/NendAdResponse$Builder;->setClickUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v8

    .line 249
    const-string v9, "height"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/nend/android/NendAdResponse$Builder;->setHeight(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v8

    .line 250
    const-string v9, "width"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/nend/android/NendAdResponse$Builder;->setWidth(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 254
    .local v0, "builder":Lnet/nend/android/NendAdResponse$Builder;
    const-string v8, "reload"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 255
    const-string v8, "reload"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lnet/nend/android/NendAdResponse$Builder;->setReloadIntervalInSeconds(I)Lnet/nend/android/NendAdResponse$Builder;

    .line 259
    :cond_2
    invoke-virtual {v0}, Lnet/nend/android/NendAdResponse$Builder;->build()Lnet/nend/android/NendAdResponse;

    move-result-object v8

    .line 270
    .end local v0    # "builder":Lnet/nend/android/NendAdResponse$Builder;
    .end local v1    # "conditionArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jEnd":I
    .end local v6    # "targetingAd":Lorg/json/JSONObject;
    :goto_2
    return-object v8

    .line 243
    .restart local v1    # "conditionArray":Lorg/json/JSONArray;
    .restart local v4    # "j":I
    .restart local v5    # "jEnd":I
    .restart local v6    # "targetingAd":Lorg/json/JSONObject;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 270
    .end local v1    # "conditionArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .end local v5    # "jEnd":I
    .end local v6    # "targetingAd":Lorg/json/JSONObject;
    :cond_4
    invoke-direct {p0, p1}, Lnet/nend/android/NendAdResponseParser;->getNormalAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;

    move-result-object v8

    goto :goto_2
.end method

.method private getNormalAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    const-string v2, "default_ad"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    .local v1, "defaultAd":Lorg/json/JSONObject;
    new-instance v2, Lnet/nend/android/NendAdResponse$Builder;

    invoke-direct {v2}, Lnet/nend/android/NendAdResponse$Builder;-><init>()V

    .line 192
    sget-object v3, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponse$Builder;->setViewType(Lnet/nend/android/AdParameter$ViewType;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v2

    .line 193
    const-string v3, "image_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponse$Builder;->setImageUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v2

    .line 194
    const-string v3, "click_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponse$Builder;->setClickUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v2

    .line 195
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponse$Builder;->setHeight(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v2

    .line 196
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/nend/android/NendAdResponse$Builder;->setWidth(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 199
    .local v0, "builder":Lnet/nend/android/NendAdResponse$Builder;
    const-string v2, "reload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const-string v2, "reload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/nend/android/NendAdResponse$Builder;->setReloadIntervalInSeconds(I)Lnet/nend/android/NendAdResponse$Builder;

    .line 204
    :cond_0
    invoke-virtual {v0}, Lnet/nend/android/NendAdResponse$Builder;->build()Lnet/nend/android/NendAdResponse;

    move-result-object v2

    return-object v2
.end method

.method private getWebViewAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lnet/nend/android/NendAdResponse$Builder;

    invoke-direct {v0}, Lnet/nend/android/NendAdResponse$Builder;-><init>()V

    .line 219
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdResponse$Builder;->setViewType(Lnet/nend/android/AdParameter$ViewType;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 220
    const-string v1, "web_view_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdResponse$Builder;->setWebViewUrl(Ljava/lang/String;)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 221
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdResponse$Builder;->setHeight(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 222
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/nend/android/NendAdResponse$Builder;->setWidth(I)Lnet/nend/android/NendAdResponse$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lnet/nend/android/NendAdResponse$Builder;->build()Lnet/nend/android/NendAdResponse;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method private isTarget(Lorg/json/JSONArray;)Z
    .locals 10
    .param p1, "ruleArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 280
    sget-boolean v7, Lnet/nend/android/NendAdResponseParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 282
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-lt v2, v1, :cond_2

    move v5, v6

    .line 307
    :cond_1
    :goto_1
    return v5

    .line 283
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 284
    .local v4, "rule":Lorg/json/JSONObject;
    const-string v7, "logical_operator"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 285
    .local v3, "logicalOperator":I
    if-ne v3, v6, :cond_3

    .line 288
    :try_start_0
    iget-object v7, p0, Lnet/nend/android/NendAdResponseParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "url_scheme"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 293
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 297
    :try_start_1
    iget-object v7, p0, Lnet/nend/android/NendAdResponseParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "url_scheme"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 300
    :catch_1
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method parseResponse(Ljava/lang/String;)Lnet/nend/android/AdParameter;
    .locals 8
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 118
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v5, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE:Lnet/nend/android/NendStatus;

    invoke-virtual {v5}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/nend/android/NendException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 161
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Lnet/nend/android/NendAdResponseParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 122
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "decodedResposeStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "responseJson":Lorg/json/JSONObject;
    const-string v4, "status_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lnet/nend/android/NendStatus;->SUCCESS:Lnet/nend/android/NendStatus;

    invoke-virtual {v5}, Lnet/nend/android/NendStatus;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 141
    new-instance v4, Lnet/nend/android/NendException;

    sget-object v5, Lnet/nend/android/NendStatus;->ERR_INVALID_AD_STATUS:Lnet/nend/android/NendStatus;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ad status : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "status_code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 142
    const-string v7, ", Message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-direct {v4, v5, v6}, Lnet/nend/android/NendException;-><init>(Lnet/nend/android/NendStatus;Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/nend/android/NendException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 164
    .end local v0    # "decodedResposeStr":Ljava/lang/String;
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lnet/nend/android/NendStatus;->ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

    invoke-static {v4, v1}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    .line 175
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 146
    .restart local v0    # "decodedResposeStr":Ljava/lang/String;
    .restart local v2    # "responseJson":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string v4, "response_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lnet/nend/android/NendAdResponseParser$ResponseType;->access$2(I)Lnet/nend/android/NendAdResponseParser$ResponseType;

    move-result-object v3

    .line 147
    .local v3, "responseType":Lnet/nend/android/NendAdResponseParser$ResponseType;
    invoke-static {}, Lnet/nend/android/NendAdResponseParser;->$SWITCH_TABLE$net$nend$android$NendAdResponseParser$ResponseType()[I

    move-result-object v4

    invoke-virtual {v3}, Lnet/nend/android/NendAdResponseParser$ResponseType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 159
    new-instance v4, Lnet/nend/android/NendException;

    sget-object v5, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE_TYPE:Lnet/nend/android/NendStatus;

    invoke-direct {v4, v5}, Lnet/nend/android/NendException;-><init>(Lnet/nend/android/NendStatus;)V

    throw v4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/nend/android/NendException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 167
    .end local v0    # "decodedResposeStr":Ljava/lang/String;
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    .end local v3    # "responseType":Lnet/nend/android/NendAdResponseParser$ResponseType;
    :catch_2
    move-exception v1

    .line 169
    .local v1, "e":Lnet/nend/android/NendException;
    sget-object v4, Lnet/nend/android/NendStatus;->ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

    invoke-static {v4, v1}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v1    # "e":Lnet/nend/android/NendException;
    .restart local v0    # "decodedResposeStr":Ljava/lang/String;
    .restart local v2    # "responseJson":Lorg/json/JSONObject;
    .restart local v3    # "responseType":Lnet/nend/android/NendAdResponseParser$ResponseType;
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v2}, Lnet/nend/android/NendAdResponseParser;->getNormalAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;

    move-result-object v4

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-direct {p0, v2}, Lnet/nend/android/NendAdResponseParser;->getWebViewAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;

    move-result-object v4

    goto :goto_1

    .line 156
    :pswitch_2
    invoke-direct {p0, v2}, Lnet/nend/android/NendAdResponseParser;->getAppTargetingAd(Lorg/json/JSONObject;)Lnet/nend/android/AdParameter;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lnet/nend/android/NendException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    goto :goto_1

    .line 170
    .end local v0    # "decodedResposeStr":Ljava/lang/String;
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    .end local v3    # "responseType":Lnet/nend/android/NendAdResponseParser$ResponseType;
    :catch_3
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lnet/nend/android/NendStatus;->ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

    invoke-static {v4, v1}, Lnet/nend/android/NendLog;->w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
