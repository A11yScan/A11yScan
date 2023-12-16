.class public Ljp/maru/mrd/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/maru/mrd/IconLoader$BannerListLoader;,
        Ljp/maru/mrd/IconLoader$ClickAgent;,
        Ljp/maru/mrd/IconLoader$IconContentStub;,
        Ljp/maru/mrd/IconLoader$SessKeyLoader;,
        Ljp/maru/mrd/IconLoader$URLOpener;,
        Ljp/maru/mrd/IconLoader$URLOpenerImpl;,
        Ljp/maru/mrd/IconLoader$_HandlerWithIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final REFRESH_INTERVAL_MAX:I = 0xe10

.field public static final REFRESH_INTERVAL_MIN:I = 0xa

.field private static final _MAX_INDEX:I = 0x31

.field private static _sessionKey:Ljava/lang/String;

.field private static final _sharedIndexSpaces:[Z

.field private static _sharedScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private _activeTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final _appContext:Landroid/content/Context;

.field private final _appHandler:Landroid/os/Handler;

.field private _handlerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private _handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/maru/mrd/IconLoader$_HandlerWithIndex",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private volatile _isStarted:Z

.field private _lastRefreshed:J

.field private _lastTouched:J

.field private final _mediaCode:Ljava/lang/String;

.field private _pendingClickResult:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private _refreshInterval:I

.field private _urlOpener:Ljp/maru/mrd/IconLoader$URLOpener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const/16 v1, 0x32

    new-array v1, v1, [Z

    sput-object v1, Ljp/maru/mrd/IconLoader;->_sharedIndexSpaces:[Z

    .line 88
    new-instance v0, Ljp/maru/mrd/IconLoader$1;

    invoke-direct {v0}, Ljp/maru/mrd/IconLoader$1;-><init>()V

    .line 96
    .local v0, "tf":Ljava/util/concurrent/ThreadFactory;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Ljp/maru/mrd/IconLoader;->_sharedScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "mediaCode"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const-wide/16 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v2, 0x1e

    iput v2, p0, Ljp/maru/mrd/IconLoader;->_refreshInterval:I

    .line 59
    iput-wide v5, p0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J

    .line 61
    iput-boolean v3, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z

    .line 76
    iput-wide v5, p0, Ljp/maru/mrd/IconLoader;->_lastTouched:J

    .line 79
    new-instance v2, Ljp/maru/mrd/IconLoader$URLOpenerImpl;

    invoke-direct {v2, p0}, Ljp/maru/mrd/IconLoader$URLOpenerImpl;-><init>(Ljp/maru/mrd/IconLoader;)V

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_urlOpener:Ljp/maru/mrd/IconLoader$URLOpener;

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    .line 122
    invoke-static {p1}, Ljp/maru/mrd/IconLoader;->isValidMediaCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect mediaCode was given"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null appContext was given"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    iput-object p1, p0, Ljp/maru/mrd/IconLoader;->_mediaCode:Ljava/lang/String;

    .line 129
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_appHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_appContext:Landroid/content/Context;

    .line 132
    :try_start_0
    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 133
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Ljp/maru/mrd/HttpAgent;->registerPackageInfo(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 140
    .local v0, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/util/concurrent/Future<*>;>;"
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    .line 141
    return-void

    .line 134
    .end local v0    # "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/util/concurrent/Future<*>;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static declared-synchronized _findAndHoldFreeIndex()I
    .locals 4

    .prologue
    .line 101
    const-class v2, Ljp/maru/mrd/IconLoader;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x31

    if-le v0, v1, :cond_0

    .line 107
    const/4 v0, -0x1

    :goto_1
    monitor-exit v2

    return v0

    .line 102
    :cond_0
    :try_start_0
    sget-object v1, Ljp/maru/mrd/IconLoader;->_sharedIndexSpaces:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Ljp/maru/mrd/IconLoader;->_sharedIndexSpaces:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized _releaseIndex(I)V
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 112
    const-class v1, Ljp/maru/mrd/IconLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/maru/mrd/IconLoader;->_sharedIndexSpaces:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v1

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ljp/maru/mrd/IconLoader;->_sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljp/maru/mrd/IconLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_mediaCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ljp/maru/mrd/IconLoader;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1}, Ljp/maru/mrd/IconLoader;->subtaskStarted(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3(Ljp/maru/mrd/IconLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Ljp/maru/mrd/IconLoader;->clickAgentDidReceiveLpUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Ljp/maru/mrd/IconLoader;)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Ljp/maru/mrd/IconLoader;->clickAgentDidFailToReceiveLpUrl()V

    return-void
.end method

.method static synthetic access$5(Ljp/maru/mrd/IconLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Ljp/maru/mrd/IconLoader;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljp/maru/mrd/IconLoader;->refresh_main()V

    return-void
.end method

.method static synthetic access$7(Ljp/maru/mrd/IconLoader;)Ljp/maru/mrd/IconLoader$URLOpener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_urlOpener:Ljp/maru/mrd/IconLoader$URLOpener;

    return-object v0
.end method

.method private clickAgentDidFailToReceiveLpUrl()V
    .locals 1

    .prologue
    .line 723
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    .line 724
    return-void
.end method

.method private clickAgentDidReceiveLpUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "lpURL"    # Ljava/lang/String;

    .prologue
    .line 704
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    invoke-direct {p0, p1}, Ljp/maru/mrd/IconLoader;->wrapLpURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "interURL":Ljava/lang/String;
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v1, :cond_0

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interURL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    iget-object v1, p0, Ljp/maru/mrd/IconLoader;->_appHandler:Landroid/os/Handler;

    new-instance v2, Ljp/maru/mrd/IconLoader$4;

    invoke-direct {v2, p0, v0}, Ljp/maru/mrd/IconLoader$4;-><init>(Ljp/maru/mrd/IconLoader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    .line 719
    return-void
.end method

.method private failedToLoadSessionKey(Ljp/maru/mrd/IconLoader$SessKeyLoader;)V
    .locals 2

    .prologue
    .line 734
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    .local p1, "loader":Ljp/maru/mrd/IconLoader$SessKeyLoader;, "Ljp/maru/mrd/IconLoader$SessKeyLoader;"
    sget v0, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v0, :cond_0

    const-string v0, "mrd"

    const-string v1, "failedToLoadSessionKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    return-void
.end method

.method public static isValidMediaCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mediaCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    .line 153
    const-string v1, "^[a-zA-Z0-9_\\-\\.]+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refresh_main()V
    .locals 19

    .prologue
    .line 337
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    const/4 v14, 0x2

    if-le v13, v14, :cond_0

    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "refresh_main: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    sget-object v13, Ljp/maru/mrd/IconLoader;->_sessionKey:Ljava/lang/String;

    if-nez v13, :cond_4

    .line 341
    new-instance v8, Ljp/maru/mrd/IconLoader$SessKeyLoader;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Ljp/maru/mrd/IconLoader$SessKeyLoader;-><init>(Ljp/maru/mrd/IconLoader$SessKeyLoader;)V

    .line 343
    .local v8, "loadSessKey":Ljp/maru/mrd/IconLoader$SessKeyLoader;, "Ljp/maru/mrd/IconLoader$SessKeyLoader;"
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_1

    const-string v13, "mrd"

    const-string v14, "start loading session key"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    invoke-virtual {v8}, Ljp/maru/mrd/IconLoader$SessKeyLoader;->startSending()V

    .line 345
    invoke-virtual {v8}, Ljp/maru/mrd/IconLoader$SessKeyLoader;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 346
    .local v11, "sessionKey":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljp/maru/mrd/IconLoader;->failedToLoadSessionKey(Ljp/maru/mrd/IconLoader$SessKeyLoader;)V

    .line 406
    .end local v8    # "loadSessKey":Ljp/maru/mrd/IconLoader$SessKeyLoader;, "Ljp/maru/mrd/IconLoader$SessKeyLoader;"
    .end local v11    # "sessionKey":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 350
    .restart local v8    # "loadSessKey":Ljp/maru/mrd/IconLoader$SessKeyLoader;, "Ljp/maru/mrd/IconLoader$SessKeyLoader;"
    .restart local v11    # "sessionKey":Ljava/lang/String;
    :cond_3
    sput-object v11, Ljp/maru/mrd/IconLoader;->_sessionKey:Ljava/lang/String;

    .line 354
    .end local v8    # "loadSessKey":Ljp/maru/mrd/IconLoader$SessKeyLoader;, "Ljp/maru/mrd/IconLoader$SessKeyLoader;"
    .end local v11    # "sessionKey":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 355
    .local v9, "now":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J

    move-object/from16 v0, p0

    iget v15, v0, Ljp/maru/mrd/IconLoader;->_refreshInterval:I

    int-to-long v15, v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long/2addr v13, v15

    cmp-long v13, v13, v9

    if-lez v13, :cond_5

    .line 356
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_2

    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "skipped:(lastRefreshed:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v15, v0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_5
    move-object/from16 v0, p0

    iput-wide v9, v0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J

    .line 362
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_6

    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "sess key:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljp/maru/mrd/IconLoader;->_sessionKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljp/maru/mrd/IconLoader;->getHandlerIndices()[I

    move-result-object v6

    .line 365
    .local v6, "indices":[I
    if-eqz v6, :cond_2

    array-length v13, v6

    if-eqz v13, :cond_2

    .line 369
    :try_start_0
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_7

    .line 370
    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "indices:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_7
    new-instance v1, Ljp/maru/mrd/IconLoader$BannerListLoader;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/maru/mrd/IconLoader;->_mediaCode:Ljava/lang/String;

    invoke-direct {v1, v6, v13}, Ljp/maru/mrd/IconLoader$BannerListLoader;-><init>([ILjava/lang/String;)V

    .line 374
    .local v1, "bnListLoader":Ljp/maru/mrd/IconLoader$BannerListLoader;, "Ljp/maru/mrd/IconLoader$BannerListLoader;"
    invoke-virtual {v1}, Ljp/maru/mrd/IconLoader$BannerListLoader;->startSending()V

    .line 375
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_8

    .line 376
    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "send started: loader="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_8
    invoke-virtual {v1}, Ljp/maru/mrd/IconLoader$BannerListLoader;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljp/maru/mrd/IconLoader$IconContentStub;

    .line 379
    .local v12, "stubs":[Ljp/maru/mrd/IconLoader$IconContentStub;
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_9

    .line 380
    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "stubs:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_9
    if-eqz v12, :cond_2

    .line 383
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v12

    if-ge v5, v13, :cond_2

    .line 384
    aget-object v13, v12, v5

    if-nez v13, :cond_a

    .line 383
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 385
    :cond_a
    aget-object v2, v12, v5

    .line 386
    .local v2, "currentStub":Ljp/maru/mrd/IconLoader$IconContentStub;, "Ljp/maru/mrd/IconLoader$IconContentStub;"
    new-instance v7, Ljp/maru/mrd/IconLoader$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Ljp/maru/mrd/IconLoader$3;-><init>(Ljp/maru/mrd/IconLoader;Ljp/maru/mrd/IconLoader$IconContentStub;)V

    .line 393
    .local v7, "loadImg":Ljava/lang/Runnable;
    sget-object v13, Ljp/maru/mrd/IconLoader;->_sharedScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v13, v7}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 394
    .local v4, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v13, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 397
    .end local v1    # "bnListLoader":Ljp/maru/mrd/IconLoader$BannerListLoader;, "Ljp/maru/mrd/IconLoader$BannerListLoader;"
    .end local v2    # "currentStub":Ljp/maru/mrd/IconLoader$IconContentStub;, "Ljp/maru/mrd/IconLoader$IconContentStub;"
    .end local v4    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v5    # "i":I
    .end local v7    # "loadImg":Ljava/lang/Runnable;
    .end local v12    # "stubs":[Ljp/maru/mrd/IconLoader$IconContentStub;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    sget v13, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v13, :cond_b

    .line 399
    const-string v13, "mrd"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljp/maru/mrd/IconLoader;->failedToLoadAll()V

    goto/16 :goto_0
.end method

.method private subtaskStarted(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 740
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method

.method private wrapLpURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "lpURL"    # Ljava/lang/String;

    .prologue
    .line 728
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "encodedURL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljp/maru/mrd/HttpAgent;->baseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_mediaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/jump.cgi?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bt=g&ucd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljp/maru/mrd/IconLoader;->_sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected clearContentAll(Z)V
    .locals 10
    .param p1, "isError"    # Z

    .prologue
    .line 466
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    monitor-enter p0

    .line 467
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v2, "handlersArr":Ljava/util/List;, "Ljava/util/List<Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    .local v6, "idArr":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 486
    return-void

    .line 466
    .end local v0    # "c":I
    .end local v2    # "handlersArr":Ljava/util/List;, "Ljava/util/List<Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;>;"
    .end local v4    # "i":I
    .end local v6    # "idArr":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 472
    .restart local v0    # "c":I
    .restart local v2    # "handlersArr":Ljava/util/List;, "Ljava/util/List<Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;>;"
    .restart local v4    # "i":I
    .restart local v6    # "idArr":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 473
    .local v5, "id":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 475
    .local v3, "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    if-eqz p1, :cond_1

    .line 476
    :try_start_2
    iget-object v7, v3, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->handler:Ljp/maru/mrd/IconHandler;

    invoke-interface {v7, p0, v5}, Ljp/maru/mrd/IconHandler;->iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V

    .line 470
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 478
    :cond_1
    iget-object v7, v3, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->handler:Ljp/maru/mrd/IconHandler;

    invoke-interface {v7, p0, v5}, Ljp/maru/mrd/IconHandler;->iconLoaderClearContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "mrd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception occured during process handler:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v7, "mrd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected contentLoaded(ILjp/maru/mrd/IconContent;)V
    .locals 9
    .param p1, "idx"    # I
    .param p2, "content"    # Ljp/maru/mrd/IconContent;

    .prologue
    .line 421
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/4 v5, 0x0

    .line 422
    .local v5, "id":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 423
    .local v2, "handler":Ljp/maru/mrd/IconHandler;, "Ljp/maru/mrd/IconHandler<TT;>;"
    sget v6, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v6, :cond_0

    .line 424
    const-string v6, "mrd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content loaded for idx:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    monitor-enter p0

    .line 427
    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_0
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-lt v4, v0, :cond_2

    .line 426
    .end local v5    # "id":Ljava/lang/Object;, "TT;"
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    if-eqz v2, :cond_1

    .line 441
    if-eqz p2, :cond_4

    .line 442
    :try_start_1
    invoke-interface {v2, p0, v5, p2}, Ljp/maru/mrd/IconHandler;->iconLoaderDidReceiveContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;Ljp/maru/mrd/IconContent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :cond_1
    :goto_2
    return-void

    .line 429
    .restart local v5    # "id":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_2
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 430
    .local v3, "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    invoke-virtual {v3}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->getIndexNextPhase()I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 431
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 432
    iget-object v2, v3, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->handler:Ljp/maru/mrd/IconHandler;

    .line 433
    invoke-virtual {v3}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->switchPhase()V

    goto :goto_1

    .line 426
    .end local v0    # "c":I
    .end local v3    # "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    .end local v5    # "id":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 427
    .restart local v0    # "c":I
    .restart local v3    # "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    .restart local v5    # "id":Ljava/lang/Object;, "TT;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    .end local v3    # "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    .end local v5    # "id":Ljava/lang/Object;, "TT;"
    :cond_4
    :try_start_3
    invoke-interface {v2, p0, v5}, Ljp/maru/mrd/IconHandler;->iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "mrd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception occured during process handler:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v6, "mrd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v6, "mrd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected failedToLoadAll()V
    .locals 2

    .prologue
    .line 456
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    sget v0, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v0, :cond_0

    .line 457
    const-string v0, "mrd"

    const-string v1, "Failed to load content all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/maru/mrd/IconLoader;->clearContentAll(Z)V

    .line 460
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    iget-object v1, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 858
    return-void

    .line 853
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 855
    .local v0, "handlerWithIndex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    invoke-virtual {v0}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljp/maru/mrd/IconLoader;->_releaseIndex(I)V

    goto :goto_0
.end method

.method protected declared-synchronized getHandlerIndices()[I
    .locals 6

    .prologue
    .line 410
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 411
    .local v3, "indexes":[I
    const/4 v1, 0x0

    .line 412
    .local v1, "i":I
    iget-object v4, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 415
    monitor-exit p0

    return-object v3

    .line 412
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 413
    .local v0, "handlerWithIndex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->getIndexNextPhase()I

    move-result v5

    aput v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 410
    .end local v0    # "handlerWithIndex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    .end local v2    # "i":I
    .end local v3    # "indexes":[I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getURLOpener()Ljp/maru/mrd/IconLoader$URLOpener;
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_urlOpener:Ljp/maru/mrd/IconLoader$URLOpener;

    return-object v0
.end method

.method public hasActiveTouchProcess()Z
    .locals 2

    .prologue
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v1, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized processTouch(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 226
    .local v4, "timestampNow":J
    iget-wide v6, p0, Ljp/maru/mrd/IconLoader;->_lastTouched:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 228
    iput-wide v4, p0, Ljp/maru/mrd/IconLoader;->_lastTouched:J

    .line 230
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 231
    .local v3, "keyPos":I
    if-gez v3, :cond_2

    .line 232
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Handler for the given id is not set. id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v3    # "keyPos":I
    .end local v4    # "timestampNow":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 234
    .restart local v3    # "keyPos":I
    .restart local v4    # "timestampNow":J
    :cond_2
    :try_start_2
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 236
    .local v2, "handlex":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    new-instance v0, Ljp/maru/mrd/IconLoader$ClickAgent;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Ljp/maru/mrd/IconLoader$ClickAgent;-><init>(Ljp/maru/mrd/IconLoader$ClickAgent;)V

    .line 237
    .local v0, "clickent":Ljp/maru/mrd/IconLoader$ClickAgent;, "Ljp/maru/mrd/IconLoader$ClickAgent<TT;>;"
    invoke-static {v0, p0}, Ljp/maru/mrd/IconLoader$ClickAgent;->access$2(Ljp/maru/mrd/IconLoader$ClickAgent;Ljp/maru/mrd/IconLoader;)V

    .line 238
    invoke-virtual {v2}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->getIndexCurrentPhase()I

    move-result v6

    invoke-static {v0, v6}, Ljp/maru/mrd/IconLoader$ClickAgent;->access$3(Ljp/maru/mrd/IconLoader$ClickAgent;I)V

    .line 239
    sget-object v6, Ljp/maru/mrd/IconLoader;->_sharedScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 240
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iput-object v1, p0, Ljp/maru/mrd/IconLoader;->_pendingClickResult:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized putIconHandler(Ljava/lang/Object;Ljp/maru/mrd/IconHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljp/maru/mrd/IconHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    .local p2, "handler":Ljp/maru/mrd/IconHandler;, "Ljp/maru/mrd/IconHandler<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 170
    .local v2, "keyPos":I
    if-ltz v2, :cond_0

    .line 171
    const/4 v3, 0x0

    .line 184
    :goto_0
    monitor-exit p0

    return v3

    .line 173
    :cond_0
    :try_start_1
    invoke-static {}, Ljp/maru/mrd/IconLoader;->_findAndHoldFreeIndex()I

    move-result v1

    .line 174
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 175
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 176
    invoke-static {}, Ljp/maru/mrd/IconLoader;->_findAndHoldFreeIndex()I

    move-result v1

    .line 177
    if-gez v1, :cond_1

    .line 178
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IconLoader(s) have too many handler. please remove at first."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v1    # "index":I
    .end local v2    # "keyPos":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 181
    .restart local v1    # "index":I
    .restart local v2    # "keyPos":I
    :cond_1
    :try_start_2
    new-instance v0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    invoke-direct {v0, p2, v1}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;-><init>(Ljp/maru/mrd/IconHandler;I)V

    .line 182
    .local v0, "handlerWithIdx":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    iget-object v3, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v3, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 2

    .prologue
    .line 331
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIconHandler(Ljava/lang/Object;)Ljp/maru/mrd/IconHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljp/maru/mrd/IconHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 195
    .local v0, "keyPos":I
    const/4 v1, 0x0

    .line 196
    .local v1, "removed":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    if-ltz v0, :cond_0

    .line 197
    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_handlerKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Ljp/maru/mrd/IconLoader;->_handlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "removed":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    check-cast v1, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;

    .line 199
    .restart local v1    # "removed":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    invoke-virtual {v1}, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljp/maru/mrd/IconLoader;->_releaseIndex(I)V

    .line 200
    iget-object v2, v1, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->handler:Ljp/maru/mrd/IconHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    .end local v0    # "keyPos":I
    .end local v1    # "removed":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader$_HandlerWithIndex<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setRefreshInterval(I)V
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 211
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe10

    if-le p1, v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Refresh interval must be in range (REFRESH_INTERVAL_MIN to MAX)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iput p1, p0, Ljp/maru/mrd/IconLoader;->_refreshInterval:I

    .line 215
    return-void
.end method

.method public setURLOpener(Ljp/maru/mrd/IconLoader$URLOpener;)V
    .locals 2

    .prologue
    .line 262
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    .local p1, "opener":Ljp/maru/mrd/IconLoader$URLOpener;, "Ljp/maru/mrd/IconLoader$URLOpener;"
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Opener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Ljp/maru/mrd/IconLoader;->_urlOpener:Ljp/maru/mrd/IconLoader$URLOpener;

    .line 266
    return-void
.end method

.method public declared-synchronized startLoading()Z
    .locals 10

    .prologue
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/4 v9, 0x1

    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "mrd"

    const-string v2, "Already loading is started."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    const/4 v0, 0x0

    .line 299
    :goto_0
    monitor-exit p0

    return v0

    .line 287
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z

    .line 289
    move-object v8, p0

    .line 290
    .local v8, "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    new-instance v1, Ljp/maru/mrd/IconLoader$2;

    invoke-direct {v1, p0, v8}, Ljp/maru/mrd/IconLoader$2;-><init>(Ljp/maru/mrd/IconLoader;Ljp/maru/mrd/IconLoader;)V

    .line 296
    .local v1, "command":Ljava/lang/Runnable;
    sget-object v0, Ljp/maru/mrd/IconLoader;->_sharedScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 297
    .local v7, "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    .line 299
    goto :goto_0

    .line 283
    .end local v1    # "command":Ljava/lang/Runnable;
    .end local v7    # "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v8    # "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLoading()Z
    .locals 7

    .prologue
    .local p0, "this":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z

    if-nez v5, :cond_0

    .line 309
    const-string v4, "mrd"

    const-string v5, "Loading is stopped."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    monitor-exit p0

    return v3

    .line 313
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 314
    .local v1, "keys":[Ljava/lang/Object;
    array-length v5, v1

    :goto_1
    if-lt v3, v5, :cond_1

    .line 319
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljp/maru/mrd/IconLoader;->_isStarted:Z

    .line 320
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Ljp/maru/mrd/IconLoader;->_lastRefreshed:J

    .line 321
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Ljp/maru/mrd/IconLoader;->_lastTouched:J

    .line 322
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljp/maru/mrd/IconLoader;->clearContentAll(Z)V

    move v3, v4

    .line 323
    goto :goto_0

    .line 314
    :cond_1
    aget-object v0, v1, v3

    .line 315
    .local v0, "key":Ljava/lang/Object;
    iget-object v6, p0, Ljp/maru/mrd/IconLoader;->_activeTasks:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 316
    .local v2, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-nez v2, :cond_2

    .line 314
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_2
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 308
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "keys":[Ljava/lang/Object;
    .end local v2    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
