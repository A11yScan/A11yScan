.class La2dp/Vol/main$5$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/main$5;

.field final synthetic val$bt:La2dp/Vol/btDevice;


# direct methods
.method constructor <init>(La2dp/Vol/main$5;La2dp/Vol/btDevice;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/main$5;

    .prologue
    .line 419
    iput-object p1, p0, La2dp/Vol/main$5$2;->this$1:La2dp/Vol/main$5;

    iput-object p2, p0, La2dp/Vol/main$5$2;->val$bt:La2dp/Vol/btDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/main$5$2;->this$1:La2dp/Vol/main$5;

    iget-object v1, v1, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    const-class v2, La2dp/Vol/EditDevice;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "btd"

    iget-object v2, p0, La2dp/Vol/main$5$2;->val$bt:La2dp/Vol/btDevice;

    iget-object v2, v2, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, La2dp/Vol/main$5$2;->this$1:La2dp/Vol/main$5;

    iget-object v1, v1, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    return-void
.end method
