.class La2dp/Vol/main$5;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 396
    iput-object p1, p0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    iget-object v3, v3, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v3, p0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    iget-object v3, v3, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/btDevice;

    .line 404
    .local v0, "bt":La2dp/Vol/btDevice;
    iget-object v3, p0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    invoke-static {v3}, La2dp/Vol/main;->access$000(La2dp/Vol/main;)La2dp/Vol/DeviceDB;

    move-result-object v3

    iget-object v4, v0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v1

    .line 405
    .local v1, "bt2":La2dp/Vol/btDevice;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 410
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    const v3, 0x7f070003

    new-instance v4, La2dp/Vol/main$5$1;

    invoke-direct {v4, p0, v1}, La2dp/Vol/main$5$1;-><init>(La2dp/Vol/main$5;La2dp/Vol/btDevice;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v3, 0x7f070005

    new-instance v4, La2dp/Vol/main$5$2;

    invoke-direct {v4, p0, v0}, La2dp/Vol/main$5$2;-><init>(La2dp/Vol/main$5;La2dp/Vol/btDevice;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
