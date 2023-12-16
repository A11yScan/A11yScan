.class La2dp/Vol/main$4$1;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/main$4;

.field final synthetic val$car:Ljava/lang/String;


# direct methods
.method constructor <init>(La2dp/Vol/main$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/main$4;

    .prologue
    .line 346
    iput-object p1, p0, La2dp/Vol/main$4$1;->this$1:La2dp/Vol/main$4;

    iput-object p2, p0, La2dp/Vol/main$4$1;->val$car:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 349
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, La2dp/Vol/main$4$1;->this$1:La2dp/Vol/main$4;

    iget-object v8, v8, La2dp/Vol/main$4;->this$0:La2dp/Vol/main;

    invoke-static {v8}, La2dp/Vol/main;->access$700(La2dp/Vol/main;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, "exportDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 387
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, La2dp/Vol/main$4$1;->val$car:Ljava/lang/String;

    const-string v10, " "

    const-string v11, "_"

    .line 356
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".html"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "file":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "st":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 361
    .local v7, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v8, "text/html"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :try_start_0
    iget-object v8, p0, La2dp/Vol/main$4$1;->this$1:La2dp/Vol/main$4;

    iget-object v8, v8, La2dp/Vol/main$4;->this$0:La2dp/Vol/main;

    invoke-virtual {v8}, La2dp/Vol/main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.chrome"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 367
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const-string v8, "com.android.chrome"

    const-string v9, "com.google.android.apps.chrome.Main"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_1
    iget-object v8, p0, La2dp/Vol/main$4$1;->this$1:La2dp/Vol/main$4;

    iget-object v8, v8, La2dp/Vol/main$4;->this$0:La2dp/Vol/main;

    invoke-virtual {v8, v4}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, La2dp/Vol/main$4$1;->this$1:La2dp/Vol/main$4;

    iget-object v8, v8, La2dp/Vol/main$4;->this$0:La2dp/Vol/main;

    invoke-static {v8}, La2dp/Vol/main;->access$800(La2dp/Vol/main;)La2dp/Vol/MyApplication;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 383
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
