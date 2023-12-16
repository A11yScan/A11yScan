.class final Lcom/directtap/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/directtap/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/directtap/k$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "view_id"

.field private static final B:Ljava/lang/String; = "retry"

.field protected static final a:Ljava/lang/String; = "vertical"

.field protected static final b:Ljava/lang/String; = "horizontal"

.field protected static final c:I = 0x1

.field protected static final d:I = 0x2

.field private static final e:Ljava/lang/String; = "impression"

.field private static final f:Ljava/lang/String; = "close_button_url"

.field private static final g:Ljava/lang/String; = "back_button_url"

.field private static final h:Ljava/lang/String; = "finish_button_url"

.field private static final i:Ljava/lang/String; = "back_landscape_button_url"

.field private static final j:Ljava/lang/String; = "finish_landscape_button_url"

.field private static final k:Ljava/lang/String; = "impression_id"

.field private static final l:Ljava/lang/String; = "view_id"

.field private static final m:Ljava/lang/String; = "creation_time"

.field private static final n:Ljava/lang/String; = "notified"

.field private static final o:Ljava/lang/String; = "test_mode"

.field private static final p:Ljava/lang/String; = "event_id"

.field private static final q:Ljava/lang/String; = "loaded_at"

.field private static final r:Ljava/lang/String; = "apps"

.field private static final s:Ljava/lang/String; = "campaign_id"

.field private static final t:Ljava/lang/String; = "retry"

.field private static final u:Ljava/lang/String; = "htmls"

.field private static final v:Ljava/lang/String; = "ad_num"

.field private static final w:Ljava/lang/String; = "ad_size"

.field private static final x:Ljava/lang/String; = "html"

.field private static final y:Ljava/lang/String; = "impression_id"

.field private static final z:Ljava/lang/String; = "data"


# instance fields
.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/directtap/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/String;

.field private E:Lorg/json/JSONObject;

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:I

.field private N:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/k;->C:Ljava/util/List;

    iput-object v2, p0, Lcom/directtap/k;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/k;->F:Ljava/util/Map;

    iput v1, p0, Lcom/directtap/k;->M:I

    iput-boolean v1, p0, Lcom/directtap/k;->N:Z

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;IZ)Lcom/directtap/k;
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lcom/directtap/k;

    invoke-direct {v0}, Lcom/directtap/k;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/directtap/k;->H:J

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-class v0, Lcom/directtap/k;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No content for this type of view"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v4, "htmls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "htmls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "htmls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/directtap/k$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/directtap/k;->C:Ljava/util/List;

    :cond_2
    const-string v4, "impression_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/directtap/k;->a(Ljava/lang/String;)V

    const-string v4, "impression"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "impression"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "impression"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/directtap/k;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/directtap/k;->i()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/directtap/k;->i()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "loaded_at"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/directtap/k;->i()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "loaded_at"

    invoke-static {}, Lcom/directtap/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v4, "close_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "close_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    const-string v5, "close_button_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/directtap/k;->a(ILjava/lang/String;)V

    :cond_4
    const-string v4, "back_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "back_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    const-string v5, "back_button_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/directtap/k;->a(ILjava/lang/String;)V

    :cond_5
    const-string v4, "finish_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "finish_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x2

    const-string v5, "finish_button_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/directtap/k;->a(ILjava/lang/String;)V

    :cond_6
    const-string v4, "back_landscape_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "back_landscape_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x3

    const-string v5, "back_landscape_button_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/directtap/k;->a(ILjava/lang/String;)V

    :cond_7
    const-string v4, "finish_landscape_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "finish_landscape_button_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x4

    const-string v5, "finish_landscape_button_url"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/directtap/k;->a(ILjava/lang/String;)V

    :cond_8
    invoke-virtual {v0, p1}, Lcom/directtap/k;->c(I)V

    invoke-virtual {v0, p2}, Lcom/directtap/k;->c(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Lcom/directtap/k;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "build impression from JSON"

    invoke-static {v1, v4, v2, v3}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-class v2, Lcom/directtap/k;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error with the response from view API"

    invoke-static {v2, v3, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "Error in view content"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static instantiateFromJSONObject(Lorg/json/JSONObject;)Lcom/directtap/k;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/directtap/k;

    invoke-direct {v0}, Lcom/directtap/k;-><init>()V

    const-string v1, "impression"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->b(Lorg/json/JSONObject;)V

    const-string v1, "impression_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->a(Ljava/lang/String;)V

    const-string v1, "view_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->c(I)V

    const-string v1, "creation_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/directtap/k;->a(J)V

    const-string v1, "notified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->b(Z)V

    const-string v1, "test_mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->c(Z)V

    const-string v1, "retry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/directtap/k;->d(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v0, Lcom/directtap/k;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not possible to instantiate an Impression from this JSONObject instance"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/directtap/g;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject cannot be null to instantiate an Impression"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected declared-synchronized a(II)Lcom/directtap/k$a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/k;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/directtap/k$a;

    invoke-virtual {v0}, Lcom/directtap/k$a;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/directtap/k$a;->c()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/directtap/k$a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/directtap/k$a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/directtap/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/directtap/k;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/directtap/k;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/directtap/k;->H:J

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/k;->D:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/directtap/k;->I:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/directtap/k;->N:Z

    iget v0, p0, Lcom/directtap/k;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/directtap/k;->M:I

    return-void
.end method

.method public a(Lcom/directtap/v;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/directtap/v;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/directtap/k;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impression"

    iget-object v2, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "impression_id"

    iget-object v2, p0, Lcom/directtap/k;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "view_id"

    iget v2, p0, Lcom/directtap/k;->G:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "creation_time"

    iget-wide v2, p0, Lcom/directtap/k;->H:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "notified"

    iget-boolean v2, p0, Lcom/directtap/k;->I:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "test_mode"

    iget-boolean v2, p0, Lcom/directtap/k;->J:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "retry"

    iget v2, p0, Lcom/directtap/k;->M:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to convert to JSON Object"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    return-void
.end method

.method protected b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/k;->I:Z

    return-void
.end method

.method protected b(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/directtap/k;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "impression_id"

    invoke-virtual {p0}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p0}, Lcom/directtap/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "view_id"

    invoke-virtual {p0}, Lcom/directtap/k;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/directtap/k;->J:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/directtap/n;->f()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "test"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lcom/directtap/k;->M:I

    if-lez v1, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "retry"

    iget v3, p0, Lcom/directtap/k;->M:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method protected c(I)V
    .locals 0

    iput p1, p0, Lcom/directtap/k;->G:I

    return-void
.end method

.method protected c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/k;->J:Z

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/directtap/k;->H:J

    return-wide v0
.end method

.method protected d(I)V
    .locals 0

    iput p1, p0, Lcom/directtap/k;->M:I

    return-void
.end method

.method protected d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/k;->L:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "impression"

    invoke-static {v0}, Lcom/directtap/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(I)V
    .locals 3

    iget-object v0, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/directtap/k;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Impression object has already an event_id key"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/k;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when adding event_id to impression object"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/k;->I:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/directtap/k;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/directtap/k;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " impression_id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/directtap/k;->M:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " retry count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/directtap/k;->M:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected i()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected j()I
    .locals 1

    iget v0, p0, Lcom/directtap/k;->G:I

    return v0
.end method

.method protected k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/k;->I:Z

    return v0
.end method

.method protected l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/k;->J:Z

    return v0
.end method

.method public declared-synchronized m()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/directtap/k;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/directtap/k;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/directtap/k;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected o()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/directtap/k;->E:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/directtap/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/k;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when searching for previous campaign id"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/k;->L:Z

    return v0
.end method
