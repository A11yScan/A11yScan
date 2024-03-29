.class La2dp/Vol/main$7;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/main;


# direct methods
.method constructor <init>(La2dp/Vol/main;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/main;

    .prologue
    .line 438
    iput-object p1, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 442
    const/16 v4, 0xfa

    :try_start_0
    new-array v0, v4, [B

    .line 443
    .local v0, "buff":[B
    iget-object v4, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    const-string v5, "My_Last_Location2"

    invoke-virtual {v4, v5}, La2dp/Vol/main;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 444
    .local v2, "fs":Ljava/io/FileInputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 445
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 446
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "st":Ljava/lang/String;
    iget-object v4, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 448
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 449
    iget-object v4, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    .end local v0    # "buff":[B
    .end local v2    # "fs":Ljava/io/FileInputStream;
    .end local v3    # "st":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    const v5, 0x7f070019

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 452
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 453
    const-string v4, "A2DP_Volume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 455
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, La2dp/Vol/main$7;->this$0:La2dp/Vol/main;

    const-string v5, "Some IO issue"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 456
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 457
    const-string v4, "A2DP_Volume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
