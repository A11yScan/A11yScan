.class public La2dp/Vol/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "Preferences.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "btVol"


# instance fields
.field private application:La2dp/Vol/MyApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, La2dp/Vol/service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, La2dp/Vol/Preferences;->stopService(Landroid/content/Intent;)Z

    .line 25
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, La2dp/Vol/Preferences;->addPreferencesFromResource(I)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 38
    const-string v4, "btVol"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, La2dp/Vol/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 39
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 42
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    new-instance v4, Landroid/content/Intent;

    const-class v5, La2dp/Vol/service;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, La2dp/Vol/Preferences;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    invoke-virtual {p0}, La2dp/Vol/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, La2dp/Vol/MyApplication;

    iput-object v4, p0, La2dp/Vol/Preferences;->application:La2dp/Vol/MyApplication;

    .line 50
    const-string v0, "a2dp.vol.preferences.UPDATED"

    .line 51
    .local v0, "IRun":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "a2dp.vol.preferences.UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v4, p0, La2dp/Vol/Preferences;->application:La2dp/Vol/MyApplication;

    invoke-virtual {v4, v2}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 57
    return-void
.end method
