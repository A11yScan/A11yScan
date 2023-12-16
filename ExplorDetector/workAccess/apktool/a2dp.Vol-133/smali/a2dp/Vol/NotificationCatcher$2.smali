.class La2dp/Vol/NotificationCatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationCatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/NotificationCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/NotificationCatcher;


# direct methods
.method constructor <init>(La2dp/Vol/NotificationCatcher;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/NotificationCatcher;

    .prologue
    .line 242
    iput-object p1, p0, La2dp/Vol/NotificationCatcher$2;->this$0:La2dp/Vol/NotificationCatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 246
    iget-object v0, p0, La2dp/Vol/NotificationCatcher$2;->this$0:La2dp/Vol/NotificationCatcher;

    iget-object v0, v0, La2dp/Vol/NotificationCatcher;->notList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method
