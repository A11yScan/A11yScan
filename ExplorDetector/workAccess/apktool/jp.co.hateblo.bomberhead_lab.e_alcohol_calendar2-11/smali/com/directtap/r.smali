.class abstract Lcom/directtap/r;
.super Landroid/widget/RelativeLayout;


# static fields
.field protected static final a:Ljava/lang/String; = "http://www.directtap.com/sdk/android/com.directtap"

.field private static final b:Ljava/lang/String; = "number"

.field private static final c:Ljava/lang/String; = "orientation"

.field private static final d:Ljava/lang/String; = "size"

.field private static final e:Ljava/lang/String; = "fitParentWidth"

.field private static final f:Ljava/lang/String; = "loadOnCreate"

.field private static final g:Ljava/lang/String; = "type"

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Lcom/directtap/p;

.field private j:Lcom/directtap/DTViewConfig;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/directtap/r$1;

    invoke-direct {v0}, Lcom/directtap/r$1;-><init>()V

    sput-object v0, Lcom/directtap/r;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/directtap/DTViewConfig;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/r;->k:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/directtap/r;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/r;->n:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/directtap/r;->o:Z

    iput-boolean v1, p0, Lcom/directtap/r;->p:Z

    iput-object p2, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/directtap/r;->m:Z

    iput p3, p0, Lcom/directtap/r;->l:I

    invoke-direct {p0}, Lcom/directtap/r;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/r;->k:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/directtap/r;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/r;->n:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/directtap/r;->o:Z

    iput-boolean v1, p0, Lcom/directtap/r;->p:Z

    invoke-virtual {p0}, Lcom/directtap/r;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/directtap/r;->b(ILandroid/util/AttributeSet;)Lcom/directtap/DTViewConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/directtap/r;->m:Z

    invoke-direct {p0, p3, p2}, Lcom/directtap/r;->a(ILandroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/directtap/r;->l:I

    invoke-direct {p0}, Lcom/directtap/r;->a()V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/directtap/r;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private a(ILandroid/util/AttributeSet;)I
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v1, "type"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return p1

    :pswitch_0
    sget-object v1, Lcom/directtap/r;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/directtap/r;Lcom/directtap/p;)Lcom/directtap/p;
    .locals 0

    iput-object p1, p0, Lcom/directtap/r;->i:Lcom/directtap/p;

    return-object p1
.end method

.method static synthetic a(Lcom/directtap/r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/directtap/r;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/directtap/r;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/directtap/r;->o:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/directtap/r;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init called"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/directtap/r;->l:I

    iget-object v1, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/o;->a(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/directtap/r$2;

    invoke-direct {v1, p0, v0}, Lcom/directtap/r$2;-><init>(Lcom/directtap/r;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1}, Lcom/directtap/r$2;->start()V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/r;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for init"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcom/directtap/p;)V
    .locals 1

    iput-object p1, p0, Lcom/directtap/r;->i:Lcom/directtap/p;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/directtap/r$3;

    invoke-direct {v0, p0}, Lcom/directtap/r$3;-><init>(Lcom/directtap/r;)V

    invoke-virtual {p0, v0}, Lcom/directtap/r;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/directtap/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/r;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/directtap/r;)I
    .locals 1

    iget v0, p0, Lcom/directtap/r;->l:I

    return v0
.end method

.method private b(ILandroid/util/AttributeSet;)Lcom/directtap/DTViewConfig;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/directtap/DTViewConfig;

    invoke-direct {v3}, Lcom/directtap/DTViewConfig;-><init>()V

    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v4, "loadOnCreate"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/directtap/DTViewConfig;->setLoadContent(Z)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-object v3

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_1
    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v4, "number"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/directtap/DTViewConfig;->setIconNumber(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v4, "orientation"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "horizontal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V

    :cond_4
    :goto_3
    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v1, "size"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "dp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/directtap/DTViewConfig;->setIconSize(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode size for icon "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode number for icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v2, "vertical"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v1}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V

    goto :goto_3

    :pswitch_2
    const-string v0, "http://www.directtap.com/sdk/android/com.directtap"

    const-string v1, "fitParentWidth"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/directtap/DTViewConfig;->setBannerFitScreenWidth(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/directtap/r;Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/directtap/r;->a(Lcom/directtap/p;)V

    return-void
.end method

.method static synthetic b(Lcom/directtap/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/r;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/directtap/r;)Lcom/directtap/DTViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    return-object v0
.end method

.method static synthetic d(Lcom/directtap/r;)Lcom/directtap/p;
    .locals 1

    iget-object v0, p0, Lcom/directtap/r;->i:Lcom/directtap/p;

    return-object v0
.end method

.method static synthetic e(Lcom/directtap/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/r;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/directtap/r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/directtap/r;->n:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/directtap/r;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/directtap/r;->o:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/directtap/r;->i:Lcom/directtap/p;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/directtap/r;->removeAllViews()V

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    iget-boolean v1, p0, Lcom/directtap/r;->m:Z

    invoke-virtual {v0, v1}, Lcom/directtap/DTViewConfig;->setLoadContent(Z)V

    invoke-direct {p0}, Lcom/directtap/r;->a()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/directtap/r$4;

    invoke-direct {v2, p0, v0}, Lcom/directtap/r$4;-><init>(Lcom/directtap/r;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/r;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for init"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/directtap/r;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTViewContainer detached from window"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/r;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->isReleaseOnDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/directtap/r;->release()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/directtap/r$5;

    invoke-direct {v2, p0, v0}, Lcom/directtap/r$5;-><init>(Lcom/directtap/r;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/r;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for init"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
