.class La2dp/Vol/EditDevice$8$1;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/EditDevice$8;

.field final synthetic val$vec:Ljava/util/Vector;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice$8;Ljava/util/Vector;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/EditDevice$8;

    .prologue
    .line 373
    iput-object p1, p0, La2dp/Vol/EditDevice$8$1;->this$1:La2dp/Vol/EditDevice$8;

    iput-object p2, p0, La2dp/Vol/EditDevice$8$1;->val$vec:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 375
    iget-object v0, p0, La2dp/Vol/EditDevice$8$1;->val$vec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 376
    iget-object v0, p0, La2dp/Vol/EditDevice$8$1;->this$1:La2dp/Vol/EditDevice$8;

    iget-object v0, v0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v0}, La2dp/Vol/EditDevice;->access$1000(La2dp/Vol/EditDevice;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, La2dp/Vol/EditDevice$8$1;->val$vec:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/btDevice;

    iget-object v0, v0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice$8$1;->this$1:La2dp/Vol/EditDevice$8;

    iget-object v0, v0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v0}, La2dp/Vol/EditDevice;->access$1000(La2dp/Vol/EditDevice;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
