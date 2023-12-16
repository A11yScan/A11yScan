.class abstract Lcom/directtap/p;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/directtap/p$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field protected static final c:I = 0x0

.field protected static final d:I = 0x1

.field protected static final e:I = 0x2

.field protected static final f:I = 0x3

.field protected static final g:I = 0x4


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/directtap/k;

.field private C:Lcom/directtap/k$a;

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/Boolean;

.field private G:Ljava/lang/Object;

.field private H:J

.field private I:Z

.field private b:Lcom/directtap/k;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/directtap/p$a;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/directtap/DirectTapListener;

.field protected j:Lcom/directtap/DTViewConfig;

.field protected k:Landroid/app/Activity;

.field protected l:I

.field protected m:I

.field protected n:Landroid/view/View$OnClickListener;

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:Lcom/directtap/s;

.field protected v:Z

.field protected w:Z

.field private x:Lcom/directtap/k$a;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/directtap/p;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/directtap/p;->z:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    iput-object v1, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    iput-object v1, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    iput-boolean v2, p0, Lcom/directtap/p;->D:Z

    iput-boolean v2, p0, Lcom/directtap/p;->E:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iput-object v1, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    iput v3, p0, Lcom/directtap/p;->l:I

    iput v3, p0, Lcom/directtap/p;->m:I

    iput-object v1, p0, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    iput v3, p0, Lcom/directtap/p;->o:I

    iput v3, p0, Lcom/directtap/p;->p:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/directtap/p;->q:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/directtap/p;->r:I

    iput v2, p0, Lcom/directtap/p;->s:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/directtap/p;->t:I

    iput-object v1, p0, Lcom/directtap/p;->u:Lcom/directtap/s;

    iput-boolean v2, p0, Lcom/directtap/p;->v:Z

    iput-boolean v4, p0, Lcom/directtap/p;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/directtap/p;->H:J

    iput-boolean v4, p0, Lcom/directtap/p;->I:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/directtap/p;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/directtap/p;->z:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    iput-object v1, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    iput-object v1, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    iput-boolean v2, p0, Lcom/directtap/p;->D:Z

    iput-boolean v2, p0, Lcom/directtap/p;->E:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iput-object v1, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    iput v3, p0, Lcom/directtap/p;->l:I

    iput v3, p0, Lcom/directtap/p;->m:I

    iput-object v1, p0, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    iput v3, p0, Lcom/directtap/p;->o:I

    iput v3, p0, Lcom/directtap/p;->p:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/directtap/p;->q:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/directtap/p;->r:I

    iput v2, p0, Lcom/directtap/p;->s:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/directtap/p;->t:I

    iput-object v1, p0, Lcom/directtap/p;->u:Lcom/directtap/s;

    iput-boolean v2, p0, Lcom/directtap/p;->v:Z

    iput-boolean v4, p0, Lcom/directtap/p;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/directtap/p;->H:J

    iput-boolean v4, p0, Lcom/directtap/p;->I:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/directtap/k;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/directtap/s;",
            "Lcom/directtap/DTViewConfig;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/directtap/p;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/directtap/p;->z:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    iput-object v0, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    iput-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    iput-boolean v2, p0, Lcom/directtap/p;->D:Z

    iput-boolean v2, p0, Lcom/directtap/p;->E:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/directtap/p;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iput-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    iput v3, p0, Lcom/directtap/p;->l:I

    iput v3, p0, Lcom/directtap/p;->m:I

    iput-object v0, p0, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    iput v3, p0, Lcom/directtap/p;->o:I

    iput v3, p0, Lcom/directtap/p;->p:I

    const/16 v1, 0x11

    iput v1, p0, Lcom/directtap/p;->q:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/directtap/p;->r:I

    iput v2, p0, Lcom/directtap/p;->s:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/directtap/p;->t:I

    iput-object v0, p0, Lcom/directtap/p;->u:Lcom/directtap/s;

    iput-boolean v2, p0, Lcom/directtap/p;->v:Z

    iput-boolean v4, p0, Lcom/directtap/p;->w:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/directtap/p;->H:J

    iput-boolean v4, p0, Lcom/directtap/p;->I:Z

    iput p6, p0, Lcom/directtap/p;->t:I

    iput-object p3, p0, Lcom/directtap/p;->z:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/directtap/p;->w:Z

    iput-object p4, p0, Lcom/directtap/p;->u:Lcom/directtap/s;

    iput-object p5, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    iput-object p2, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/directtap/p;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/directtap/p;->c()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/directtap/k;->a(II)Lcom/directtap/k$a;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTView instantiated with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impression_id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "no impression"

    goto :goto_0
.end method

.method static synthetic a(Lcom/directtap/p;Lcom/directtap/k$a;)Lcom/directtap/k$a;
    .locals 0

    iput-object p1, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    return-object p1
.end method

.method static synthetic a(Lcom/directtap/p;Lcom/directtap/k;)Lcom/directtap/k;
    .locals 0

    iput-object p1, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 3

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show DTView for reason number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/directtap/p;->t:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/directtap/q;->a(ILcom/directtap/p;)V

    iget-object v1, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    iget-object v1, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iget-boolean v2, p0, Lcom/directtap/p;->D:Z

    invoke-static {v0, p1, v1, v2}, Lcom/directtap/p;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Z)V
    .locals 2

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowNotPossible() is called"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Lcom/directtap/p$6;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/directtap/p$6;-><init>(Lcom/directtap/DirectTapListener;Landroid/app/Activity;IZ)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected static a(Landroid/app/Activity;Lcom/directtap/DirectTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/directtap/p$5;

    invoke-direct {v0, p1, p0}, Lcom/directtap/p$5;-><init>(Lcom/directtap/DirectTapListener;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/directtap/p;->H:J

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load html content for view uniqueId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/directtap/p;->t:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/directtap/p;->y:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->m()V

    return-void
.end method

.method static synthetic a(Lcom/directtap/p;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/directtap/p;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/directtap/p;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/directtap/p;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/directtap/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/directtap/p;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/directtap/p;)Lcom/directtap/k$a;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    return-object v0
.end method

.method private b(Lcom/directtap/k;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/directtap/k;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/directtap/p;->a(Lcom/directtap/k;)V

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This impression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added to the notification list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/directtap/DirectTap;->a(Lcom/directtap/v;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This impression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been added to the notification list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/directtap/p;Lcom/directtap/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/directtap/p;->b(Lcom/directtap/k;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/directtap/p;->h:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/directtap/p$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, v0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, v0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v1, v0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/directtap/p$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v1, v0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/directtap/p$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    if-nez p1, :cond_7

    iget-object v1, v0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/directtap/p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/directtap/p$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v1, v0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/directtap/p$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/directtap/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/directtap/p;->n:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/directtap/p;->d(I)V

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0, v1}, Lcom/directtap/q;->a(ILcom/directtap/p;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/directtap/p;->p()V

    iget-object v1, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/directtap/p$8;

    invoke-direct {v0, p0}, Lcom/directtap/p$8;-><init>(Lcom/directtap/p;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/directtap/p;->q()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/directtap/p;)Lcom/directtap/k$a;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss() is called"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v1, Lcom/directtap/p$4;

    invoke-direct {v1, p0, p1}, Lcom/directtap/p$4;-><init>(Lcom/directtap/p;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/directtap/p$13;

    invoke-direct {v1, p0, v0}, Lcom/directtap/p$13;-><init>(Lcom/directtap/p;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for DTView to be removed from UI"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->o()V

    return-void
.end method

.method static synthetic f(Lcom/directtap/p;)Z
    .locals 1

    invoke-direct {p0}, Lcom/directtap/p;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/directtap/p;)Lcom/directtap/k;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    return-object v0
.end method

.method static synthetic h(Lcom/directtap/p;)Z
    .locals 1

    invoke-direct {p0}, Lcom/directtap/p;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->t()V

    return-void
.end method

.method static synthetic j(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->x()V

    return-void
.end method

.method static synthetic k(Lcom/directtap/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->u()V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v1, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/directtap/p;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/directtap/p;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/directtap/p;->setVisibility(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/directtap/p;->r:I

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v2, p0, Lcom/directtap/p;->s:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/directtap/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/directtap/p$a;

    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/directtap/p$a;-><init>(Lcom/directtap/p;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/directtap/p;->h:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/directtap/p;->removeAllViews()V

    iget-object v3, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v3, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/directtap/p;->addView(Landroid/view/View;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic m(Lcom/directtap/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/p;->v()V

    return-void
.end method

.method private n()Z
    .locals 3

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getWindowVisibility() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/directtap/p;->getWindowVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/directtap/p;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/directtap/p;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/directtap/p;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->I:Z

    return v0
.end method

.method static synthetic o(Lcom/directtap/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/directtap/p;->H:J

    return-wide v0
.end method

.method private o()V
    .locals 4

    iget-object v1, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Layout is replaced"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/directtap/p;->h:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    iget-object v3, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/directtap/p$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/directtap/p$a;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/directtap/p;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/directtap/p;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method static synthetic p(Lcom/directtap/p;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->z:Ljava/util/Map;

    return-object v0
.end method

.method private p()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_1
    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_2
    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    :cond_3
    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_4
    if-nez v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/p;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load dummy url"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/directtap/p;->u:Lcom/directtap/s;

    invoke-virtual {v0}, Lcom/directtap/s;->b()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupt while waiting for rendering dismiss"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[Show] can\'t show because of displaying activity"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    iget-object v1, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private t()V
    .locals 3

    invoke-virtual {p0}, Lcom/directtap/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overlay DTView is added to the WindowManager"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/directtap/p;->w()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to show the overlay"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    invoke-virtual {p0}, Lcom/directtap/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overlay DTView is removed from the WindowManager"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to remove the overlay"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/directtap/p;->w()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when updating view layout"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private w()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v1, p0, Lcom/directtap/p;->o:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/directtap/p;->p:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, p0, Lcom/directtap/p;->q:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-boolean v1, p0, Lcom/directtap/p;->v:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0

    :cond_0
    const/16 v1, 0xbd5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method private x()V
    .locals 2

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShow() is called"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v1, Lcom/directtap/p$3;

    invoke-direct {v1, p0}, Lcom/directtap/p$3;-><init>(Lcom/directtap/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss for cause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v2, Lcom/directtap/p$14;

    invoke-direct {v2, p0, v0}, Lcom/directtap/p$14;-><init>(Lcom/directtap/p;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/directtap/p;->c(I)V

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for dismiss process"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected a(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/directtap/p;->E:Z

    invoke-direct {p0, p1}, Lcom/directtap/p;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/directtap/k;)V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTView is refreshed with no impression of type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTView "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uniqueId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v1}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is refreshed with impression_id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/directtap/p;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/directtap/p;->c()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/directtap/k;->a(II)Lcom/directtap/k$a;

    move-result-object v1

    invoke-direct {p0}, Lcom/directtap/p;->s()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/directtap/p;->E:Z

    if-eqz v2, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/directtap/p;->p()V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/directtap/p$9;

    invoke-direct {v3, p0, p2, v1, v2}, Lcom/directtap/p$9;-><init>(Lcom/directtap/p;Lcom/directtap/k;Lcom/directtap/k$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/directtap/p;->D:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    :cond_4
    iget-object v1, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    invoke-virtual {v1, v0}, Lcom/directtap/k;->e(I)V

    :cond_5
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :try_start_3
    const-string v1, ""

    goto :goto_1

    :catch_0
    move-exception v1

    const-class v2, Lcom/directtap/p;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while waiting for refresh"

    invoke-static {v2, v3, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_7
    iput-object p2, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    iput-object v1, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method protected a(Landroid/content/Context;Lcom/directtap/DTViewConfig;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/directtap/k;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/directtap/p;->v:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/directtap/p;->I:Z

    new-instance v0, Lcom/directtap/p$7;

    invoke-direct {v0, p0}, Lcom/directtap/p$7;-><init>(Lcom/directtap/p;)V

    invoke-virtual {p0, v0}, Lcom/directtap/p;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/directtap/p;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-direct {p0, v0}, Lcom/directtap/p;->b(Lcom/directtap/k;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/app/Activity;ZLcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)Z
    .locals 6

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    const-class v3, Lcom/directtap/p;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DTView.show() is called"

    invoke-static {v3, v4}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v4

    invoke-virtual {v3, v4, p4}, Lcom/directtap/DTViewConfig;->equalsForType(ILcom/directtap/DTViewConfig;)Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v1

    :goto_0
    iget-object v3, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v3, v1

    :goto_1
    iput-boolean p5, p0, Lcom/directtap/p;->w:Z

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    iget-boolean v5, p0, Lcom/directtap/p;->w:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/directtap/p;->s()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    if-eqz v5, :cond_3

    monitor-exit p0

    :goto_2
    return v0

    :cond_1
    move v4, v0

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_9

    :cond_4
    invoke-direct {p0}, Lcom/directtap/p;->s()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/directtap/p;->w:Z

    if-eqz v3, :cond_9

    move v3, v1

    :goto_3
    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/directtap/p;->d(Landroid/app/Activity;)V

    :cond_5
    iput-object p1, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    iput-object p3, p0, Lcom/directtap/p;->i:Lcom/directtap/DirectTapListener;

    iput-boolean p2, p0, Lcom/directtap/p;->D:Z

    invoke-virtual {p0}, Lcom/directtap/p;->j()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_a

    move v0, v2

    :goto_4
    iget-object v2, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-virtual {v2, v0}, Lcom/directtap/k;->e(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/directtap/p;->E:Z

    if-eqz v0, :cond_7

    if-eqz v4, :cond_b

    :cond_7
    iget-object v2, p0, Lcom/directtap/p;->G:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {p0, v0, p4}, Lcom/directtap/p;->a(Landroid/content/Context;Lcom/directtap/DTViewConfig;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/directtap/p;->c(Landroid/app/Activity;)V

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DTView.show() we reinit it because not prerendered or config is different"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->d(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    invoke-virtual {v0}, Lcom/directtap/k$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No content received"

    invoke-static {v0, v2}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/directtap/p;->a(IZ)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    goto :goto_2

    :cond_9
    move v3, v0

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    :try_start_5
    iput-object p4, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/directtap/p;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DTView.show() we can display it"

    invoke-static {v0, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/directtap/p;->A:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v4, Lcom/directtap/p$12;

    invoke-direct {v4, p0, p2, v3}, Lcom/directtap/p$12;-><init>(Lcom/directtap/p;ZZ)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/directtap/p;->q()V

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0, p0}, Lcom/directtap/q;->a(ILcom/directtap/p;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    iget-object v2, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x1

    :try_start_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/p;->F:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v0, v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_d
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error because can\'t display"

    invoke-static {v0, v2}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/directtap/p;->a(IZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method protected a(Lcom/directtap/k$a;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b()I
.end method

.method protected b(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/directtap/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/directtap/p;->q:I

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v1, Lcom/directtap/p$2;

    invoke-direct {v1, p0}, Lcom/directtap/p$2;-><init>(Lcom/directtap/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    if-nez v0, :cond_4

    :cond_0
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTView is not refreshed because no content set with refreshContent() uniqueId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/directtap/p;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/directtap/p;->E:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    new-instance v0, Lcom/directtap/p$10;

    invoke-direct {v0, p0}, Lcom/directtap/p$10;-><init>(Lcom/directtap/p;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit p0

    :goto_1
    return-void

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    iput-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->B:Lcom/directtap/k;

    iget-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    iput-object v0, p0, Lcom/directtap/p;->x:Lcom/directtap/k$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/p;->C:Lcom/directtap/k$a;

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTView uniqueId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is refreshed with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-virtual {v2}, Lcom/directtap/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/directtap/p;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/p$11;

    invoke-direct {v0, p0}, Lcom/directtap/p$11;-><init>(Lcom/directtap/p;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected abstract c()I
.end method

.method protected c(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process next refresh for view type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/directtap/p;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->c(I)V

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/p;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/q;->a(Landroid/app/Activity;IZZ)V

    return-void
.end method

.method public dismiss()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->g(I)Z

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->c(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dismiss from JS "

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/directtap/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/directtap/p;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/directtap/p;->a(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/directtap/p;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Back button click event"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/directtap/p;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    new-instance v2, Lcom/directtap/p$15;

    invoke-direct {v2, p0, v0}, Lcom/directtap/p$15;-><init>(Lcom/directtap/p;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/p;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to wait for dismiss process"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->w:Z

    return v0
.end method

.method protected g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->v:Z

    return v0
.end method

.method protected h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->v:Z

    return v0
.end method

.method protected i()Lcom/directtap/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected j()I
    .locals 1

    iget v0, p0, Lcom/directtap/p;->t:I

    return v0
.end method

.method protected k()Lcom/directtap/DTViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/directtap/p;->j:Lcom/directtap/DTViewConfig;

    return-object v0
.end method

.method protected l()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/directtap/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->k:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/directtap/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-direct {p0, v0}, Lcom/directtap/p;->b(Lcom/directtap/k;)V

    :cond_0
    invoke-virtual {p0}, Lcom/directtap/p;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/directtap/p;->v()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/p;->D:Z

    invoke-direct {p0, v0}, Lcom/directtap/p;->b(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VisibilityChanged detected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/directtap/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-direct {p0, v0}, Lcom/directtap/p;->b(Lcom/directtap/k;)V

    :cond_0
    return-void
.end method

.method public showBrowser(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->c(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show browser for url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/directtap/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/directtap/p;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/directtap/p;->a(I)V

    goto :goto_0
.end method

.method public tapAppProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-virtual {v0}, Lcom/directtap/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/directtap/k;->d(Z)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget v0, p0, Lcom/directtap/p;->t:I

    invoke-static {v0}, Lcom/directtap/q;->c(I)V

    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tap on this app : campaignId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " campaignType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " impressionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/p;->b:Lcom/directtap/k;

    invoke-direct {p0, v0}, Lcom/directtap/p;->b(Lcom/directtap/k;)V

    new-instance v0, Lcom/directtap/g;

    invoke-static {}, Lcom/directtap/n;->f()Z

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/directtap/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(Lcom/directtap/v;)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/directtap/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/directtap/p;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/directtap/p$1;

    invoke-direct {v0, p0}, Lcom/directtap/p$1;-><init>(Lcom/directtap/p;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_2
    const-class v0, Lcom/directtap/p;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Something went wrong as impression is null"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-class v1, Lcom/directtap/DirectTap;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Activity found to handle this url scheme"

    invoke-static {v1, v2, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/directtap/p;->a(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method
