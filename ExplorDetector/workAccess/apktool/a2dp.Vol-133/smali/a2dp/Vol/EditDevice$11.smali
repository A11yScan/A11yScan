.class La2dp/Vol/EditDevice$11;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/EditDevice;
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
    .line 629
    iput-object p1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0xb

    .line 633
    packed-switch p2, :pswitch_data_0

    .line 694
    :goto_0
    return-void

    .line 636
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1}, La2dp/Vol/EditDevice;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La2dp/Vol/AppChooser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 641
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 644
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Create a Shortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 649
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1}, La2dp/Vol/EditDevice;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La2dp/Vol/ProviderList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    .restart local v0    # "i":Landroid/content/Intent;
    sget-object v1, La2dp/Vol/ProviderList;->EXTRA_PROVIDER:Ljava/lang/String;

    sget v2, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1, v0, v3}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 656
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1}, La2dp/Vol/EditDevice;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La2dp/Vol/ProviderList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .restart local v0    # "i":Landroid/content/Intent;
    sget-object v1, La2dp/Vol/ProviderList;->EXTRA_PROVIDER:Ljava/lang/String;

    sget v2, La2dp/Vol/ProviderList;->PROVIDER_PANDORA:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1, v0, v3}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 676
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v1}, La2dp/Vol/EditDevice;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, La2dp/Vol/CustomIntentMaker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "alarm_custom_action"

    iget-object v2, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v2}, La2dp/Vol/EditDevice;->access$1300(La2dp/Vol/EditDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v1, "alarm_custom_data"

    iget-object v2, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v2}, La2dp/Vol/EditDevice;->access$1400(La2dp/Vol/EditDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v1, "alarm_custom_type"

    iget-object v2, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v2}, La2dp/Vol/EditDevice;->access$1500(La2dp/Vol/EditDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v1, "alarm_package_name"

    iget-object v2, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v2}, La2dp/Vol/EditDevice;->access$1600(La2dp/Vol/EditDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 686
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_5
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const-string v2, ""

    invoke-static {v1, v2}, La2dp/Vol/EditDevice;->access$1602(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const-string v2, ""

    invoke-static {v1, v2}, La2dp/Vol/EditDevice;->access$1302(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const-string v2, ""

    invoke-static {v1, v2}, La2dp/Vol/EditDevice;->access$1402(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    const-string v2, ""

    invoke-static {v1, v2}, La2dp/Vol/EditDevice;->access$1502(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    iget-object v1, p0, La2dp/Vol/EditDevice$11;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v1}, La2dp/Vol/EditDevice;->access$1700(La2dp/Vol/EditDevice;)V

    goto/16 :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
