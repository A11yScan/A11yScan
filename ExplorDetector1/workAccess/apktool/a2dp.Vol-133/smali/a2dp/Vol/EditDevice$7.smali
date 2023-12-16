.class La2dp/Vol/EditDevice$7;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 332
    iput-object p1, p0, La2dp/Vol/EditDevice$7;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, La2dp/Vol/EditDevice$7;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "adb2":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-static {}, La2dp/Vol/EditDevice;->access$600()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La2dp/Vol/EditDevice$7;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v2}, La2dp/Vol/EditDevice;->access$700(La2dp/Vol/EditDevice;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 344
    return-void
.end method
