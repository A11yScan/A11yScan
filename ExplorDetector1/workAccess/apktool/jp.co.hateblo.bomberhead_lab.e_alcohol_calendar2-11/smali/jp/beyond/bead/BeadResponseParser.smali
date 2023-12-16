.class final Ljp/beyond/bead/BeadResponseParser;
.super Ljava/lang/Object;
.source "BeadResponseParser.java"


# static fields
.field private static final ACTION_TYPE_PARAM:Ljava/lang/String; = "action_type"

.field private static final ADID_PARAM:Ljava/lang/String; = "aid"

.field private static final HREF_PARAM:Ljava/lang/String; = "href"

.field private static final SRC_PARAM:Ljava/lang/String; = "src"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Ljp/beyond/bead/BeadData;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "adData":Ljp/beyond/bead/BeadData;
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v0

    .line 62
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .local v1, "adData":Ljp/beyond/bead/BeadData;
    :goto_0
    return-object v1

    .line 45
    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "result":Lorg/json/JSONObject;
    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v1, v0

    .line 49
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_0

    .line 52
    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :cond_2
    new-instance v1, Ljp/beyond/bead/BeadData;

    invoke-direct {v1}, Ljp/beyond/bead/BeadData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    :try_start_1
    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljp/beyond/bead/BeadData;->setHref(Ljava/lang/String;)V

    .line 54
    const-string v4, "src"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljp/beyond/bead/BeadData;->setSrc(Ljava/lang/String;)V

    .line 55
    const-string v4, "aid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljp/beyond/bead/BeadData;->setAid(I)V

    .line 56
    const-string v4, "action_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljp/beyond/bead/BeadData;->setActionType(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .end local v3    # "result":Lorg/json/JSONObject;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :goto_1
    move-object v1, v0

    .line 62
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_0

    .line 58
    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    .end local v0    # "adData":Ljp/beyond/bead/BeadData;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v3    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "adData":Ljp/beyond/bead/BeadData;
    .restart local v0    # "adData":Ljp/beyond/bead/BeadData;
    goto :goto_2
.end method
