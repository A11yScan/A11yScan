.class final Lcom/directtap/n;
.super Lcom/directtap/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/directtap/n$a;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "socket_time_out"

.field protected static final B:Ljava/lang/String; = "features_max_retry"

.field protected static final C:Ljava/lang/String; = "version_check_interval"

.field protected static final D:Ljava/lang/String; = "check_loop_interval"

.field protected static final E:Ljava/lang/String; = "install_check_period"

.field protected static final F:Ljava/lang/String; = "icon_timing_refresh"

.field protected static final G:Ljava/lang/String; = "banner_timing_refresh"

.field protected static final H:Ljava/lang/String; = "animation_time_out"

.field protected static final I:Ljava/lang/String; = "fullscreen_radius"

.field protected static final J:Ljava/lang/String; = "fullscreen_percent"

.field protected static final K:Ljava/lang/String; = "fullscreen_portrait_percent"

.field protected static final L:Ljava/lang/String; = "fullscreen_landscape_percent"

.field protected static final M:Ljava/lang/String; = "fullscreen_outside_alpha"

.field protected static final N:Ljava/lang/String; = "fullscreen_margin"

.field protected static final O:Ljava/lang/String; = "fullscreen_timing_refresh"

.field protected static final P:Ljava/lang/String; = "close_button_ref_density"

.field protected static final Q:Ljava/lang/String; = "close_button_position"

.field protected static final R:Ljava/lang/String; = "back_button_position"

.field protected static final S:Ljava/lang/String; = "finish_button_position"

.field protected static final T:Ljava/lang/String; = "back_landscape_button_position"

.field protected static final U:Ljava/lang/String; = "finish_landscape_button_position"

.field protected static final V:Ljava/lang/String; = "x"

.field protected static final W:Ljava/lang/String; = "y"

.field protected static final X:Ljava/lang/String; = "banner"

.field protected static final Y:Ljava/lang/String; = "large-banner"

.field protected static final Z:Ljava/lang/String; = "landscape-banner"

.field protected static final a:Ljava/lang/String; = "1.0.7"

.field protected static final aa:Ljava/lang/String; = "width"

.field protected static final ab:Ljava/lang/String; = "height"

.field protected static final ac:Ljava/util/Map;
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

.field private static final ai:Ljava/lang/String; = "DirectTapSDK"

.field private static aj:Lcom/directtap/n; = null

.field protected static final b:Ljava/lang/String; = "DirectTapJS"

.field protected static final c:Ljava/lang/String; = "DIRECTTAP_SDK"

.field protected static final d:Ljava/lang/String; = "notifs_list"

.field protected static final e:Ljava/lang/String; = "checked_version_time"

.field protected static final f:Ljava/lang/String; = "DirectTapSDK ver"

.field protected static final g:Ljava/lang/String; = "Android"

.field protected static final h:I = 0x1

.field protected static final i:I = 0x32

.field protected static final j:I = 0x32

.field protected static final k:I = 0x7c

.field protected static final l:I = 0x1388

.field protected static final m:I = 0x2bf20

.field protected static final n:I = 0xea60

.field protected static final o:I = 0x8

.field protected static final p:I = 0x7

.field protected static final q:I = 0x7

.field protected static final r:I = 0x4

.field protected static final s:I = 0x4

.field protected static final t:Ljava/util/Map;
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

.field protected static final u:Ljava/lang/String; = "features"

.field protected static final v:Ljava/lang/String; = "impression"

.field protected static final w:Ljava/lang/String; = "tap"

.field protected static final x:Ljava/lang/String; = "install"

.field protected static final y:Ljava/lang/String; = "view"

.field protected static final z:Ljava/lang/String; = "connection_time_out"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/directtap/n$1;

    invoke-direct {v0}, Lcom/directtap/n$1;-><init>()V

    sput-object v0, Lcom/directtap/n;->t:Ljava/util/Map;

    new-instance v0, Lcom/directtap/n$2;

    invoke-direct {v0}, Lcom/directtap/n$2;-><init>()V

    sput-object v0, Lcom/directtap/n;->ac:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/directtap/y;-><init>()V

    invoke-static {}, Lcom/directtap/DirectTap;->b()Lcom/directtap/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/directtap/n;->a(Lcom/directtap/b;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/directtap/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static declared-synchronized a()Lcom/directtap/n;
    .locals 2

    const-class v1, Lcom/directtap/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/directtap/n;->aj:Lcom/directtap/n;

    if-nez v0, :cond_1

    const-string v0, "[Settings] load settings"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/n;

    invoke-direct {v0}, Lcom/directtap/n;-><init>()V

    sput-object v0, Lcom/directtap/n;->aj:Lcom/directtap/n;

    :cond_0
    :goto_0
    sget-object v0, Lcom/directtap/n;->aj:Lcom/directtap/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/directtap/n;->aj:Lcom/directtap/n;

    invoke-virtual {v0}, Lcom/directtap/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[Settings] reload expired settings"

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/n;

    invoke-direct {v0}, Lcom/directtap/n;-><init>()V

    sput-object v0, Lcom/directtap/n;->aj:Lcom/directtap/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/directtap/n;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/directtap/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected static b()Z
    .locals 1

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/directtap/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/directtap/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/directtap/n;->ac:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/directtap/n;->l()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/directtap/n;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/directtap/n;->t:Ljava/util/Map;

    sget v1, Lcom/directtap/n;->ag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
