.class La2dp/Vol/EditDevice$6;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/EditDevice;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 288
    iput-object p1, p0, La2dp/Vol/EditDevice$6;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    .line 291
    iget-object v10, p0, La2dp/Vol/EditDevice$6;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v10}, La2dp/Vol/EditDevice;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 292
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 293
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/String;

    .line 294
    .local v6, "lstring":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 295
    .local v2, "i":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    .line 296
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 297
    .local v3, "itent":Landroid/content/Intent;
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    if-lez v10, :cond_0

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    .line 299
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v10, v6, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 295
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "itent":Landroid/content/Intent;
    :cond_1
    new-array v5, v2, [Ljava/lang/String;

    .line 310
    .local v5, "ls2":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 311
    aget-object v10, v6, v4

    aput-object v10, v5, v4

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    :cond_2
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 315
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, La2dp/Vol/EditDevice$6;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v10, "Pick a package"

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    new-instance v10, La2dp/Vol/EditDevice$6$1;

    invoke-direct {v10, p0, v5}, La2dp/Vol/EditDevice$6$1;-><init>(La2dp/Vol/EditDevice$6;[Ljava/lang/String;)V

    invoke-virtual {v1, v5, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 325
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    return v11
.end method
