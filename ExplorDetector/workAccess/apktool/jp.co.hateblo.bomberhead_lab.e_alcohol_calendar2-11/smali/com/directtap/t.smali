.class final Lcom/directtap/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;IJ)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    iput-object v0, p0, Lcom/directtap/t;->b:Landroid/app/Activity;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/directtap/t;->b:Landroid/app/Activity;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    new-instance v1, Lcom/directtap/t$1;

    invoke-direct {v1, p0, p2}, Lcom/directtap/t$1;-><init>(Lcom/directtap/t;I)V

    iget-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    move-wide v2, p3

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/directtap/t;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/directtap/t;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/directtap/t;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/directtap/t;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/t;->a:Ljava/util/Timer;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
