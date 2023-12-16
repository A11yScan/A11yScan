.class abstract Lcom/directtap/y;
.super Ljava/lang/Object;


# static fields
.field private static A:Z = false

.field private static B:Ljava/lang/String; = null

.field private static final C:Ljava/lang/String; = "com.directtap.UnityWrapper"

.field private static final D:Ljava/lang/String; = "com.directtap.air.DirectTapAIRWrapper"

.field private static final E:Ljava/lang/String; = "getPlatform"

.field private static final a:Ljava/lang/String; = "Native"

.field protected static final ad:I = 0x0

.field protected static final ae:I = 0x1

.field protected static final af:I = 0x2

.field protected static ag:I = 0x0

.field protected static final ah:I = 0xea60

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "expire"

.field private static final d:Ljava/lang/String; = "urls"

.field private static final e:Ljava/lang/String; = "settings"

.field private static final f:Ljava/lang/String; = "checklist"

.field private static final g:Ljava/lang/String; = "latestVersion"

.field private static final h:Ljava/lang/String; = "processes"

.field private static final i:Ljava/lang/String; = "executables"

.field private static final j:Ljava/lang/String; = "files"

.field private static final k:Ljava/lang/String; = "packageNames"

.field private static final l:I = 0xea60

.field private static final m:I = 0xea60

.field private static n:Lcom/directtap/y; = null

.field private static x:Z = false

.field private static final y:Ljava/lang/String; = "com.directtap.Config"

.field private static final z:Ljava/lang/String; = "getEnv"


# instance fields
.field private o:J

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/directtap/y;->ag:I

    sput-boolean v1, Lcom/directtap/y;->b:Z

    sput-boolean v1, Lcom/directtap/y;->x:Z

    sput-boolean v1, Lcom/directtap/y;->A:Z

    const-string v0, "Native"

    sput-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/directtap/y;->o:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->s:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->t:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/y;->u:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/y;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/directtap/y;->w:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/directtap/y;->o:J

    return-void

    :catch_0
    move-exception v2

    const-class v3, Lcom/directtap/y;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error when parsing expire key"

    invoke-static {v3, v4, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " -> "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/directtap/y;->b:Z

    return-void
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static f()Z
    .locals 1

    sget-boolean v0, Lcom/directtap/y;->b:Z

    return v0
.end method

.method protected static n()I
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/directtap/y;->x:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.directtap.Config"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getEnv"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget v1, Lcom/directtap/y;->ag:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/directtap/y;->ag:I

    sget-object v0, Lcom/directtap/y;->n:Lcom/directtap/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/y;->n:Lcom/directtap/y;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/directtap/y;->o:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget v0, Lcom/directtap/y;->ag:I

    return v0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/directtap/y;->x:Z

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v3, Lcom/directtap/y;->x:Z

    goto :goto_0
.end method

.method protected static o()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/directtap/y;->A:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/directtap/y;->A:Z

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "com.directtap.UnityWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPlatform"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/directtap/y;->B:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Native"

    sput-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    :cond_2
    sput-boolean v3, Lcom/directtap/y;->A:Z

    :cond_3
    sget-object v0, Lcom/directtap/y;->B:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "com.directtap.air.DirectTapAIRWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPlatform"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/directtap/y;->B:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/directtap/b;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/directtap/y;->w:Z

    const-string v0, "[Settings] initialize"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/directtap/y;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Settings] fetch"

    invoke-static {v1}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const v2, 0xea60

    const v3, 0xea60

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/directtap/b;->a(Ljava/lang/String;Ljava/util/List;II)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "[Settings] decode"

    invoke-static {v1}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/directtap/y;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/directtap/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[Settings] failed to fetch"

    invoke-static {v1}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iput-wide v5, p0, Lcom/directtap/y;->o:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception when contacting settings list API : "

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v4, p0, Lcom/directtap/y;->w:Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[Settings] failed to decode"

    invoke-static {v1}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iput-wide v5, p0, Lcom/directtap/y;->o:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception when decoding settings list : "

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "Error in content for initialization"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/directtap/y;->w:Z

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "expire"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/directtap/y;->a(Ljava/lang/String;)V

    const-string v2, "urls"

    iget-object v3, p0, Lcom/directtap/y;->t:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v3}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "settings"

    iget-object v3, p0, Lcom/directtap/y;->u:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v3}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "checklist"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "checklist"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "processes"

    iget-object v4, p0, Lcom/directtap/y;->p:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "executables"

    iget-object v4, p0, Lcom/directtap/y;->q:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "files"

    iget-object v4, p0, Lcom/directtap/y;->r:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "packageNames"

    iget-object v4, p0, Lcom/directtap/y;->s:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/directtap/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    const-string v2, "latestVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "latestVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/directtap/y;->v:Ljava/lang/String;

    :cond_1
    const-class v2, Lcom/directtap/y;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "decode bootstrap response"

    invoke-static {v2, v3, v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/y;->w:Z

    return v0
.end method

.method protected e()Z
    .locals 4

    iget-wide v0, p0, Lcom/directtap/y;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-class v0, Lcom/directtap/y;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings has expired"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/directtap/y;->p:Ljava/util/List;

    return-object v0
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/directtap/y;->q:Ljava/util/List;

    return-object v0
.end method

.method protected i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/directtap/y;->r:Ljava/util/List;

    return-object v0
.end method

.method protected j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/directtap/y;->s:Ljava/util/List;

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/directtap/y;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected l()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/directtap/y;->u:Ljava/util/Map;

    return-object v0
.end method

.method protected m()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/directtap/y;->t:Ljava/util/Map;

    return-object v0
.end method
