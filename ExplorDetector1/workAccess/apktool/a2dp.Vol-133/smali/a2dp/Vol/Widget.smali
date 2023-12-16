.class public La2dp/Vol/Widget;
.super Landroid/appwidget/AppWidgetProvider;
.source "Widget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v8, 0x0

    .line 25
    array-length v0, p3

    .line 29
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    aget v1, p3, v2

    .line 33
    .local v1, "appWidgetId":I
    new-instance v3, Landroid/content/Intent;

    const-class v6, La2dp/Vol/ALauncher;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p1, v8, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 39
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04000a

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v5, "views":Landroid/widget/RemoteViews;
    const v6, 0x7f0a004e

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 45
    invoke-virtual {p2, v1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "appWidgetId":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "views":Landroid/widget/RemoteViews;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 50
    return-void
.end method
