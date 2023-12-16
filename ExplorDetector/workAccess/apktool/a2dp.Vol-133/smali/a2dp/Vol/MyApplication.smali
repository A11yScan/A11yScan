.class public La2dp/Vol/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "A2DP Volume"


# instance fields
.field private dataHelper:La2dp/Vol/DeviceDB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceDB()La2dp/Vol/DeviceDB;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/MyApplication;->dataHelper:La2dp/Vol/DeviceDB;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    const-string v1, "A2DP Volume"

    const-string v2, "APPLICATION onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    new-instance v1, La2dp/Vol/DeviceDB;

    invoke-direct {v1, p0}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, La2dp/Vol/MyApplication;->dataHelper:La2dp/Vol/DeviceDB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const-string v1, "A2DP Volume"

    const-string v2, "APPLICATION onCreate failed to open DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "A2DP Volume"

    const-string v1, "APPLICATION onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 33
    return-void
.end method

.method public setDeviceDB(La2dp/Vol/DeviceDB;)V
    .locals 0
    .param p1, "dataHelper"    # La2dp/Vol/DeviceDB;

    .prologue
    .line 40
    iput-object p1, p0, La2dp/Vol/MyApplication;->dataHelper:La2dp/Vol/DeviceDB;

    .line 41
    return-void
.end method
