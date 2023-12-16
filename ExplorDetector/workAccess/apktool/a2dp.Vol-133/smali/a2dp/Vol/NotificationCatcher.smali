.class public La2dp/Vol/NotificationCatcher;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationCatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/NotificationCatcher$notItem;,
        La2dp/Vol/NotificationCatcher$Readit;
    }
.end annotation


# static fields
.field private static packages:[Ljava/lang/String;


# instance fields
.field private application:La2dp/Vol/MyApplication;

.field apps1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clear:Landroid/content/BroadcastReceiver;

.field notList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La2dp/Vol/NotificationCatcher$notItem;",
            ">;"
        }
    .end annotation
.end field

.field private packagelist:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field private final reloadprefs:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2dp/Vol/NotificationCatcher;->apps1:Ljava/util/List;

    .line 233
    new-instance v0, La2dp/Vol/NotificationCatcher$1;

    invoke-direct {v0, p0}, La2dp/Vol/NotificationCatcher$1;-><init>(La2dp/Vol/NotificationCatcher;)V

    iput-object v0, p0, La2dp/Vol/NotificationCatcher;->reloadprefs:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, La2dp/Vol/NotificationCatcher$2;

    invoke-direct {v0, p0}, La2dp/Vol/NotificationCatcher$2;-><init>(La2dp/Vol/NotificationCatcher;)V

    iput-object v0, p0, La2dp/Vol/NotificationCatcher;->clear:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, La2dp/Vol/NotificationCatcher;->packages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(La2dp/Vol/NotificationCatcher;)La2dp/Vol/MyApplication;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/NotificationCatcher;

    .prologue
    .line 34
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method


# virtual methods
.method public LoadPrefs()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "packages"

    const-string v2, "com.google.android.talk,com.android.email,com.android.calendar"

    .line 225
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/NotificationCatcher;->packagelist:Ljava/lang/String;

    .line 227
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->packagelist:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, La2dp/Vol/NotificationCatcher;->packages:[Ljava/lang/String;

    .line 229
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->apps1:Ljava/util/List;

    const-string v1, "com.google.android.talk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->apps1:Ljava/util/List;

    const-string v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, La2dp/Vol/NotificationCatcher;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, La2dp/Vol/MyApplication;

    iput-object v2, p0, La2dp/Vol/NotificationCatcher;->application:La2dp/Vol/MyApplication;

    .line 51
    iget-object v2, p0, La2dp/Vol/NotificationCatcher;->application:La2dp/Vol/MyApplication;

    .line 52
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/NotificationCatcher;->preferences:Landroid/content/SharedPreferences;

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "a2dp.vol.Reload"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "reloadmessage":Landroid/content/IntentFilter;
    iget-object v2, p0, La2dp/Vol/NotificationCatcher;->reloadprefs:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, La2dp/Vol/NotificationCatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "a2dp.Vol.Clear"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "clearFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, La2dp/Vol/NotificationCatcher;->clear:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, La2dp/Vol/NotificationCatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, La2dp/Vol/NotificationCatcher;->LoadPrefs()V

    .line 60
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->reloadprefs:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, La2dp/Vol/NotificationCatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    iget-object v0, p0, La2dp/Vol/NotificationCatcher;->clear:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, La2dp/Vol/NotificationCatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 68
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 80
    new-instance v0, La2dp/Vol/NotificationCatcher$Readit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La2dp/Vol/NotificationCatcher$Readit;-><init>(La2dp/Vol/NotificationCatcher;La2dp/Vol/NotificationCatcher$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, La2dp/Vol/NotificationCatcher$Readit;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 74
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 220
    return-void
.end method
