.class La2dp/Vol/EditDevice$12;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 783
    iput-object p1, p0, La2dp/Vol/EditDevice$12;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 786
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/EditDevice$12;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1}, La2dp/Vol/EditDevice;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La2dp/Vol/AppChooser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, La2dp/Vol/EditDevice$12;->this$0:La2dp/Vol/EditDevice;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    .line 789
    return-void
.end method
