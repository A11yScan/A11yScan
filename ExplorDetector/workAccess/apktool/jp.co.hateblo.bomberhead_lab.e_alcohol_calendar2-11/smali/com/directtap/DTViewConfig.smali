.class final Lcom/directtap/DTViewConfig;
.super Ljava/lang/Object;


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2

.field protected static final c:I = 0x3

.field protected static final d:Ljava/lang/String; = "fullscreenOrientation"

.field protected static final e:Ljava/lang/String; = "iconOrientation"

.field protected static final f:Ljava/lang/String; = "iconPosition"

.field protected static final g:Ljava/lang/String; = "iconSize"

.field protected static final h:Ljava/lang/String; = "iconNumber"

.field protected static final i:Ljava/lang/String; = "bannerPosition"

.field protected static final j:Ljava/lang/String; = "bannerFitScreenWidth"

.field protected static final k:Ljava/lang/String; = "refreshTimeInterval"

.field protected static final l:Ljava/lang/String; = "horizontal"

.field protected static final m:Ljava/lang/String; = "vertical"

.field protected static final n:Ljava/lang/String; = "top"

.field protected static final o:Ljava/lang/String; = "bottom"

.field protected static final p:Ljava/lang/String; = "right"

.field protected static final q:Ljava/lang/String; = "left"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/directtap/DTViewConfig;->r:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/directtap/DTViewConfig;->s:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/directtap/DTViewConfig;->t:I

    iput v1, p0, Lcom/directtap/DTViewConfig;->u:I

    iput v2, p0, Lcom/directtap/DTViewConfig;->v:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/directtap/DTViewConfig;->w:I

    iput-boolean v2, p0, Lcom/directtap/DTViewConfig;->x:Z

    iput-boolean v1, p0, Lcom/directtap/DTViewConfig;->y:Z

    iput-boolean v1, p0, Lcom/directtap/DTViewConfig;->z:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/DTViewConfig;->A:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/directtap/DTViewConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/directtap/DTViewConfig;-><init>()V

    iget v0, p1, Lcom/directtap/DTViewConfig;->r:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->r:I

    iget v0, p1, Lcom/directtap/DTViewConfig;->s:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->s:I

    iget v0, p1, Lcom/directtap/DTViewConfig;->t:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->t:I

    iget v0, p1, Lcom/directtap/DTViewConfig;->u:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->u:I

    iget v0, p1, Lcom/directtap/DTViewConfig;->v:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->v:I

    iget v0, p1, Lcom/directtap/DTViewConfig;->w:I

    iput v0, p0, Lcom/directtap/DTViewConfig;->w:I

    iget-boolean v0, p1, Lcom/directtap/DTViewConfig;->x:Z

    iput-boolean v0, p0, Lcom/directtap/DTViewConfig;->x:Z

    iget-boolean v0, p1, Lcom/directtap/DTViewConfig;->y:Z

    iput-boolean v0, p0, Lcom/directtap/DTViewConfig;->y:Z

    iget-boolean v0, p1, Lcom/directtap/DTViewConfig;->z:Z

    iput-boolean v0, p0, Lcom/directtap/DTViewConfig;->z:Z

    return-void
.end method

.method protected static decodePositionFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x30

    :cond_0
    :goto_0
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x3

    :cond_1
    :goto_1
    return v0

    :cond_2
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_3
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x5

    goto :goto_1
.end method


# virtual methods
.method protected equalsForType(ILcom/directtap/DTViewConfig;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/directtap/DTViewConfig;->u:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/directtap/DTViewConfig;->v:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/directtap/DTViewConfig;->t:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/directtap/DTViewConfig;->s:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->s:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/directtap/DTViewConfig;->r:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->r:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/directtap/DTViewConfig;->w:I

    iget v3, p2, Lcom/directtap/DTViewConfig;->w:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/directtap/DTViewConfig;->x:Z

    iget-boolean v3, p2, Lcom/directtap/DTViewConfig;->x:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected getBannerPosition()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->w:I

    return v0
.end method

.method protected getFullScreenOrientation()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->r:I

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->u:I

    return v0
.end method

.method protected getIconOrientation()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->v:I

    return v0
.end method

.method protected getIconPosition()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->t:I

    return v0
.end method

.method protected getIconSize()I
    .locals 1

    iget v0, p0, Lcom/directtap/DTViewConfig;->s:I

    return v0
.end method

.method protected getRefreshTimeInterval(I)J
    .locals 4

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-wide v0, v1

    goto :goto_0
.end method

.method protected getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DTViewConfig;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected isBannerFitScreenWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/DTViewConfig;->x:Z

    return v0
.end method

.method protected isLoadContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/DTViewConfig;->y:Z

    return v0
.end method

.method protected isReleaseOnDetached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/DTViewConfig;->z:Z

    return v0
.end method

.method protected setBannerFitScreenWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/DTViewConfig;->x:Z

    return-void
.end method

.method protected setBannerPosition(I)V
    .locals 1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const-string v0, "You should set Gravity.TOP or Gravity.BOTTOM"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/directtap/DTViewConfig;->w:I

    goto :goto_0
.end method

.method protected setFromJSONString(ILjava/lang/String;)V
    .locals 4

    const-class v0, Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build config from json string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for view type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "fullscreenOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setFullScreenOrientation(I)V

    const-string v1, "fullscreenOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "fullscreenOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "fullscreenOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setFullScreenOrientation(I)V

    :cond_1
    const-string v1, "iconOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "iconOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V

    :cond_2
    :goto_0
    const-string v1, "iconPosition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "iconPosition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/directtap/DTViewConfig;->decodePositionFromString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setIconPosition(I)V

    :cond_3
    const-string v1, "iconSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "iconSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setIconSize(I)V

    :cond_4
    const-string v1, "iconNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "iconNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setIconNumber(I)V

    :cond_5
    const-string v1, "bannerPosition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "bannerPosition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setBannerPosition(I)V

    :cond_6
    const-string v1, "bannerFitScreenWidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "bannerFitScreenWidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setBannerFitScreenWidth(Z)V

    :cond_7
    const-string v1, "refreshTimeInterval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-lez p1, :cond_8

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    const-string v2, "refreshTimeInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/directtap/DTViewConfig;->setRefreshTimeInterval(IJ)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when decoding the json config String"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected setFullScreenOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v0, "This orientation is not available for FullScreen. Please use one of DirectTap.ORIENTATION_AUTO, DirectTap.ORIENTATION_LANDSCAPE and DirectTap.ORIENTATION_PORTRAIT. Will use default value."

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/directtap/DTViewConfig;->r:I

    goto :goto_0
.end method

.method protected setIconNumber(I)V
    .locals 3

    const/16 v2, 0x32

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const-string v0, "You should set an iconNumber value between 1 and 50"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    iput v1, p0, Lcom/directtap/DTViewConfig;->u:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v2, :cond_1

    const-string v0, "You should set an iconNumber value between 1 and 50"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    iput v2, p0, Lcom/directtap/DTViewConfig;->u:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/directtap/DTViewConfig;->u:I

    goto :goto_0
.end method

.method protected setIconOrientation(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "This orientation is not available for Icon. Please use one of LinearLayout.HORIZONTAL and LinearLayout.VERTICAL. Will use default value."

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/directtap/DTViewConfig;->v:I

    goto :goto_0
.end method

.method protected setIconPosition(I)V
    .locals 1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    const/16 v0, 0x53

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const-string v0, "You should set a position value as a combination of Gravity.TOP, Gravity.BOTTOM, Gravity.LEFT or Gravity.RIGHT constants"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/directtap/DTViewConfig;->t:I

    goto :goto_0
.end method

.method protected setIconSize(I)V
    .locals 3

    const/16 v2, 0x7c

    const/16 v1, 0x32

    if-ge p1, v1, :cond_0

    const-string v0, "You should set an iconSize value between 50 and 124"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    iput v1, p0, Lcom/directtap/DTViewConfig;->s:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v2, :cond_1

    const-string v0, "You should set an iconSize value between 50 and 124"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    iput v2, p0, Lcom/directtap/DTViewConfig;->s:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/directtap/DTViewConfig;->s:I

    goto :goto_0
.end method

.method protected setLoadContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/DTViewConfig;->y:Z

    return-void
.end method

.method protected setRefreshTimeInterval(IJ)V
    .locals 4

    iget-object v1, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    monitor-enter v1

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom refresh time interval is removed for view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-wide/16 v2, 0x1388

    cmp-long v0, p2, v2

    if-ltz v0, :cond_1

    const-wide/32 v2, 0x2bf20

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    :cond_1
    const-string v0, "You should set a refresh time interval value between 5000 and 180000"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-class v0, Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom refresh time interval is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms for view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DTViewConfig;->B:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setReleaseOnDetached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/DTViewConfig;->z:Z

    return-void
.end method
