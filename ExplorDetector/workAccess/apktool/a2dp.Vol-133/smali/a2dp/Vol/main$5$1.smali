.class La2dp/Vol/main$5$1;
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

.field final synthetic val$bt2:La2dp/Vol/btDevice;


# direct methods
.method constructor <init>(La2dp/Vol/main$5;La2dp/Vol/btDevice;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/main$5;

    .prologue
    .line 412
    iput-object p1, p0, La2dp/Vol/main$5$1;->this$1:La2dp/Vol/main$5;

    iput-object p2, p0, La2dp/Vol/main$5$1;->val$bt2:La2dp/Vol/btDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 415
    iget-object v0, p0, La2dp/Vol/main$5$1;->this$1:La2dp/Vol/main$5;

    iget-object v0, v0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    invoke-static {v0}, La2dp/Vol/main;->access$000(La2dp/Vol/main;)La2dp/Vol/DeviceDB;

    move-result-object v0

    iget-object v1, p0, La2dp/Vol/main$5$1;->val$bt2:La2dp/Vol/btDevice;

    invoke-virtual {v0, v1}, La2dp/Vol/DeviceDB;->delete(La2dp/Vol/btDevice;)V

    .line 416
    iget-object v0, p0, La2dp/Vol/main$5$1;->this$1:La2dp/Vol/main$5;

    iget-object v0, v0, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    iget-object v1, p0, La2dp/Vol/main$5$1;->this$1:La2dp/Vol/main$5;

    iget-object v1, v1, La2dp/Vol/main$5;->this$0:La2dp/Vol/main;

    invoke-static {v1}, La2dp/Vol/main;->access$100(La2dp/Vol/main;)I

    move-result v1

    invoke-static {v0, v1}, La2dp/Vol/main;->access$200(La2dp/Vol/main;I)V

    .line 417
    return-void
.end method
