.class La2dp/Vol/PackagesChooser$1;
.super Ljava/lang/Object;
.source "PackagesChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/PackagesChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/PackagesChooser;


# direct methods
.method constructor <init>(La2dp/Vol/PackagesChooser;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 107
    iput-object p1, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 110
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, La2dp/Vol/PackagesChooser;->access$002(La2dp/Vol/PackagesChooser;Ljava/util/List;)Ljava/util/List;

    .line 112
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v4}, La2dp/Vol/PackagesChooser;->access$100(La2dp/Vol/PackagesChooser;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 114
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, La2dp/Vol/PackagesChooser$AppInfoCache;

    iget-object v5, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    iget-object v6, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v6}, La2dp/Vol/PackagesChooser;->access$100(La2dp/Vol/PackagesChooser;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7, v8}, La2dp/Vol/PackagesChooser$AppInfoCache;-><init>(La2dp/Vol/PackagesChooser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v3, "tmpCache":La2dp/Vol/PackagesChooser$AppInfoCache;
    iget-object v5, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v5}, La2dp/Vol/PackagesChooser;->access$000(La2dp/Vol/PackagesChooser;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "tmpCache":La2dp/Vol/PackagesChooser$AppInfoCache;
    :cond_0
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v4}, La2dp/Vol/PackagesChooser;->access$000(La2dp/Vol/PackagesChooser;)Ljava/util/List;

    move-result-object v4

    new-instance v5, La2dp/Vol/PackagesChooser$AlphaComparator;

    iget-object v6, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-direct {v5, v6}, La2dp/Vol/PackagesChooser$AlphaComparator;-><init>(La2dp/Vol/PackagesChooser;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, La2dp/Vol/PackagesChooser;->access$202(La2dp/Vol/PackagesChooser;Ljava/util/List;)Ljava/util/List;

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "i":I
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v4}, La2dp/Vol/PackagesChooser;->access$000(La2dp/Vol/PackagesChooser;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/PackagesChooser$AppInfoCache;

    .line 121
    .local v0, "appInfo":La2dp/Vol/PackagesChooser$AppInfoCache;
    invoke-virtual {v0, v1}, La2dp/Vol/PackagesChooser$AppInfoCache;->setPosition(I)V

    .line 122
    iget-object v5, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v5}, La2dp/Vol/PackagesChooser;->access$300(La2dp/Vol/PackagesChooser;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, La2dp/Vol/PackagesChooser$AppInfoCache;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5}, La2dp/Vol/PackagesChooser$AppInfoCache;->setChecked(Z)V

    .line 123
    iget-object v5, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v5}, La2dp/Vol/PackagesChooser;->access$200(La2dp/Vol/PackagesChooser;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    goto :goto_1

    .line 126
    .end local v0    # "appInfo":La2dp/Vol/PackagesChooser$AppInfoCache;
    :cond_1
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    new-instance v5, La2dp/Vol/PackagesChooser$PackageListAdapter;

    iget-object v6, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    iget-object v7, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-virtual {v7}, La2dp/Vol/PackagesChooser;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, La2dp/Vol/PackagesChooser$PackageListAdapter;-><init>(La2dp/Vol/PackagesChooser;Landroid/content/Context;)V

    invoke-static {v4, v5}, La2dp/Vol/PackagesChooser;->access$402(La2dp/Vol/PackagesChooser;La2dp/Vol/PackagesChooser$PackageListAdapter;)La2dp/Vol/PackagesChooser$PackageListAdapter;

    .line 127
    iget-object v4, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v4}, La2dp/Vol/PackagesChooser;->access$600(La2dp/Vol/PackagesChooser;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, La2dp/Vol/PackagesChooser$1;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v5}, La2dp/Vol/PackagesChooser;->access$500(La2dp/Vol/PackagesChooser;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
