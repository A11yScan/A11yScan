.class public La2dp/Vol/Starter;
.super Landroid/content/BroadcastReceiver;
.source "Starter.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "a2dp.Vol_preferences"


# instance fields
.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string v0, "a2dp.Vol_preferences"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/Starter;->preferences:Landroid/content/SharedPreferences;

    .line 22
    iget-object v0, p0, La2dp/Vol/Starter;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bootstart"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, La2dp/Vol/service;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    :cond_0
    return-void
.end method
