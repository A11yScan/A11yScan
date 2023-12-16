.class La2dp/Vol/main$8;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 465
    iput-object p1, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    iget-object v0, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    iget-boolean v0, v0, La2dp/Vol/main;->servrun:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    const-class v3, La2dp/Vol/service;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, La2dp/Vol/main;->stopService(Landroid/content/Intent;)Z

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, La2dp/Vol/main$8;->this$0:La2dp/Vol/main;

    const-class v3, La2dp/Vol/service;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, La2dp/Vol/main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
