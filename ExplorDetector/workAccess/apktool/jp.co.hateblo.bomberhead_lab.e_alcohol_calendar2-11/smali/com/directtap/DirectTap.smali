.class public final Lcom/directtap/DirectTap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/directtap/DirectTap$LandscapeBanner;,
        Lcom/directtap/DirectTap$LargeBanner;,
        Lcom/directtap/DirectTap$Banner;,
        Lcom/directtap/DirectTap$BannerBase;,
        Lcom/directtap/DirectTap$Icon;,
        Lcom/directtap/DirectTap$FinishScreen;,
        Lcom/directtap/DirectTap$FullScreen;,
        Lcom/directtap/DirectTap$Starter;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;

.field private static c:Lcom/directtap/DirectTap;

.field private static d:Lcom/directtap/f;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Lcom/directtap/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/directtap/DirectTap;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/directtap/DirectTap;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/directtap/DirectTap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/directtap/DirectTap;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/directtap/DirectTap;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    return-object p1
.end method

.method protected static a()Lcom/directtap/DirectTap;
    .locals 3

    sget-object v1, Lcom/directtap/DirectTap;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/directtap/DirectTap;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    if-nez v0, :cond_0

    const-string v0, "start() method must be called before to call other methods (or an error occurred when calling start() method)"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    sget-object v0, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic a(Lcom/directtap/DirectTap;)Lcom/directtap/DirectTap;
    .locals 0

    sput-object p0, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    return-object p0
.end method

.method static synthetic a(Lcom/directtap/f;)Lcom/directtap/f;
    .locals 0

    sput-object p0, Lcom/directtap/DirectTap;->d:Lcom/directtap/f;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/directtap/DirectTap;->b(I)V

    return-void
.end method

.method static synthetic a(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/directtap/DirectTap;->b(II)V

    return-void
.end method

.method static synthetic a(ILandroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/directtap/DirectTap;->b(ILandroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/directtap/DirectTap;->b(IZ)V

    return-void
.end method

.method protected static a(Landroid/app/Activity;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/directtap/DirectTap$11;

    invoke-direct {v1, p1, p0}, Lcom/directtap/DirectTap$11;-><init>(ILandroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V
    .locals 7

    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/directtap/q;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[Show] not yet loaded so nothing will be shown"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/DirectTap$5;

    invoke-direct {v0, p0, p2, p4}, Lcom/directtap/DirectTap$5;-><init>(Landroid/app/Activity;Lcom/directtap/DirectTapListener;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/directtap/DTViewConfig;->isLoadContent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/directtap/DTViewConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/directtap/o;->a(ILjava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/directtap/DirectTap$6;

    move v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/directtap/DirectTap$6;-><init>(ILandroid/app/Activity;Lcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;Z)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/directtap/DirectTap;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/directtap/DirectTap;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method protected static a(Lcom/directtap/v;)V
    .locals 1

    new-instance v0, Lcom/directtap/DirectTap$2;

    invoke-direct {v0, p0}, Lcom/directtap/DirectTap$2;-><init>(Lcom/directtap/v;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static b()Lcom/directtap/f;
    .locals 1

    sget-object v0, Lcom/directtap/DirectTap;->d:Lcom/directtap/f;

    return-object v0
.end method

.method private static b(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/directtap/DirectTap$7;

    invoke-direct {v1, p0}, Lcom/directtap/DirectTap$7;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(II)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/directtap/DirectTap$10;

    invoke-direct {v1, p0, p1}, Lcom/directtap/DirectTap$10;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(ILandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/directtap/DirectTap$9;

    invoke-direct {v1, p0, p1}, Lcom/directtap/DirectTap$9;-><init>(ILandroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/directtap/DirectTap$8;

    invoke-direct {v1, p0, p1}, Lcom/directtap/DirectTap$8;-><init>(IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Lcom/directtap/DirectTap$1;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/directtap/DirectTap$1;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;Ljava/lang/String;ZJ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to wait latch in DirectTap processStart() before time up"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to wait latch in DirectTap processStart()"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/directtap/u;

    invoke-direct {v0}, Lcom/directtap/u;-><init>()V

    const-string v1, "DirectTapJS"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/directtap/DirectTap;)Z
    .locals 1

    invoke-direct {p0}, Lcom/directtap/DirectTap;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/directtap/DirectTap;)V
    .locals 0

    invoke-direct {p0}, Lcom/directtap/DirectTap;->i()V

    return-void
.end method

.method static synthetic d(Lcom/directtap/DirectTap;)Lcom/directtap/w;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap;->f:Lcom/directtap/w;

    return-object v0
.end method

.method static synthetic e(Lcom/directtap/DirectTap;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/directtap/DirectTap;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()Lcom/directtap/DirectTap;
    .locals 1

    sget-object v0, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/directtap/DirectTap;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()Lcom/directtap/f;
    .locals 1

    sget-object v0, Lcom/directtap/DirectTap;->d:Lcom/directtap/f;

    return-object v0
.end method

.method private i()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/directtap/g;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/directtap/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "[Notif] create background process"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    sget-object v9, Lcom/directtap/DirectTap;->c:Lcom/directtap/DirectTap;

    new-instance v0, Lcom/directtap/w;

    invoke-static {}, Lcom/directtap/DirectTap;->b()Lcom/directtap/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/directtap/DirectTap;->d()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "notifs_list"

    const-string v5, "check_loop_interval"

    invoke-static {v5}, Lcom/directtap/n;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/directtap/w;-><init>(Ljava/util/List;Lcom/directtap/b;Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, v9, Lcom/directtap/DirectTap;->f:Lcom/directtap/w;

    const-string v0, "[Notif] check background process launch"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/directtap/DirectTap$4;

    invoke-direct {v1, p0}, Lcom/directtap/DirectTap$4;-><init>(Lcom/directtap/DirectTap;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-class v0, Lcom/directtap/DirectTap;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeNotificationManager()"

    invoke-static {v0, v1, v7, v8}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private j()Z
    .locals 7

    invoke-virtual {p0}, Lcom/directtap/DirectTap;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checked_version_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "version_check_interval"

    invoke-static {v3}, Lcom/directtap/n;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_version_time"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/n;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/n;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "A new version of DirectTap SDK is available"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    new-instance v1, Lcom/directtap/DirectTap$3;

    invoke-direct {v1, p0}, Lcom/directtap/DirectTap$3;-><init>(Lcom/directtap/DirectTap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    return-object v0
.end method

.method protected d()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/directtap/DirectTap;->e:Landroid/app/Activity;

    const-string v1, "DIRECTTAP_SDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
