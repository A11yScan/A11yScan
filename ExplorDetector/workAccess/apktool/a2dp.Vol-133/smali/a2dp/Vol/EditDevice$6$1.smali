.class La2dp/Vol/EditDevice$6$1;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice$6;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/EditDevice$6;

.field final synthetic val$ls2:[Ljava/lang/String;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice$6;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/EditDevice$6;

    .prologue
    .line 318
    iput-object p1, p0, La2dp/Vol/EditDevice$6$1;->this$1:La2dp/Vol/EditDevice$6;

    iput-object p2, p0, La2dp/Vol/EditDevice$6$1;->val$ls2:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 320
    iget-object v0, p0, La2dp/Vol/EditDevice$6$1;->this$1:La2dp/Vol/EditDevice$6;

    iget-object v0, v0, La2dp/Vol/EditDevice$6;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v0}, La2dp/Vol/EditDevice;->access$500(La2dp/Vol/EditDevice;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, La2dp/Vol/EditDevice$6$1;->val$ls2:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method
