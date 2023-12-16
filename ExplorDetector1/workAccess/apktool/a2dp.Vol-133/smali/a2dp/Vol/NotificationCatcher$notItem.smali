.class La2dp/Vol/NotificationCatcher$notItem;
.super Ljava/lang/Object;
.source "NotificationCatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/NotificationCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "notItem"
.end annotation


# instance fields
.field not:Ljava/lang/String;

.field nottime:Ljava/lang/Long;

.field final synthetic this$0:La2dp/Vol/NotificationCatcher;


# direct methods
.method public constructor <init>(La2dp/Vol/NotificationCatcher;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p2, "not"    # Ljava/lang/String;
    .param p3, "nottime"    # Ljava/lang/Long;

    .prologue
    .line 257
    iput-object p1, p0, La2dp/Vol/NotificationCatcher$notItem;->this$0:La2dp/Vol/NotificationCatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, La2dp/Vol/NotificationCatcher$notItem;->not:Ljava/lang/String;

    .line 259
    iput-object p3, p0, La2dp/Vol/NotificationCatcher$notItem;->nottime:Ljava/lang/Long;

    .line 260
    return-void
.end method


# virtual methods
.method public getNot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, La2dp/Vol/NotificationCatcher$notItem;->not:Ljava/lang/String;

    return-object v0
.end method

.method public getNottime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, La2dp/Vol/NotificationCatcher$notItem;->nottime:Ljava/lang/Long;

    return-object v0
.end method

.method public setNot(Ljava/lang/String;)V
    .locals 0
    .param p1, "not"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, La2dp/Vol/NotificationCatcher$notItem;->not:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setNottime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "nottime"    # Ljava/lang/Long;

    .prologue
    .line 267
    iput-object p1, p0, La2dp/Vol/NotificationCatcher$notItem;->nottime:Ljava/lang/Long;

    .line 268
    return-void
.end method
