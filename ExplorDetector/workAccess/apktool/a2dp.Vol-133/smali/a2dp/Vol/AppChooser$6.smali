.class La2dp/Vol/AppChooser$6;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method constructor <init>(La2dp/Vol/AppChooser;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 171
    iput-object p1, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 174
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, La2dp/Vol/AppChooser;->access$102(La2dp/Vol/AppChooser;Ljava/util/List;)Ljava/util/List;

    .line 176
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v4}, La2dp/Vol/AppChooser;->access$200(La2dp/Vol/AppChooser;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 177
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

    .line 178
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, La2dp/Vol/AppChooser$AppInfoCache;

    iget-object v5, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    iget-object v6, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v6}, La2dp/Vol/AppChooser;->access$200(La2dp/Vol/AppChooser;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7, v8}, La2dp/Vol/AppChooser$AppInfoCache;-><init>(La2dp/Vol/AppChooser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v3, "tmpCache":La2dp/Vol/AppChooser$AppInfoCache;
    iget-object v5, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v5}, La2dp/Vol/AppChooser;->access$100(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "tmpCache":La2dp/Vol/AppChooser$AppInfoCache;
    :cond_0
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v4}, La2dp/Vol/AppChooser;->access$100(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v4

    new-instance v5, La2dp/Vol/AppChooser$AlphaComparator;

    iget-object v6, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {v5, v6}, La2dp/Vol/AppChooser$AlphaComparator;-><init>(La2dp/Vol/AppChooser;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, La2dp/Vol/AppChooser;->access$302(La2dp/Vol/AppChooser;Ljava/util/List;)Ljava/util/List;

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "i":I
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v4}, La2dp/Vol/AppChooser;->access$100(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/AppChooser$AppInfoCache;

    .line 185
    .local v0, "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    invoke-virtual {v0, v1}, La2dp/Vol/AppChooser$AppInfoCache;->setPosition(I)V

    .line 186
    iget-object v5, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v5}, La2dp/Vol/AppChooser;->access$300(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    goto :goto_1

    .line 189
    .end local v0    # "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    :cond_1
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    new-instance v5, La2dp/Vol/AppChooser$PackageListAdapter;

    iget-object v6, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    iget-object v7, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-virtual {v7}, La2dp/Vol/AppChooser;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, La2dp/Vol/AppChooser$PackageListAdapter;-><init>(La2dp/Vol/AppChooser;Landroid/content/Context;)V

    invoke-static {v4, v5}, La2dp/Vol/AppChooser;->access$402(La2dp/Vol/AppChooser;La2dp/Vol/AppChooser$PackageListAdapter;)La2dp/Vol/AppChooser$PackageListAdapter;

    .line 190
    iget-object v4, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v4}, La2dp/Vol/AppChooser;->access$600(La2dp/Vol/AppChooser;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, La2dp/Vol/AppChooser$6;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v5}, La2dp/Vol/AppChooser;->access$500(La2dp/Vol/AppChooser;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
