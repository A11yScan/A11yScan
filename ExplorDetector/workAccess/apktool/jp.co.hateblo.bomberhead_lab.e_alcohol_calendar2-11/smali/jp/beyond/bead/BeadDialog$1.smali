.class Ljp/beyond/bead/BeadDialog$1;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/bead/BeadDialog;->setCancelButtonClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/bead/BeadDialog;


# direct methods
.method constructor <init>(Ljp/beyond/bead/BeadDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/bead/BeadDialog$1;->this$0:Ljp/beyond/bead/BeadDialog;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog$1;->this$0:Ljp/beyond/bead/BeadDialog;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadDialog;->dismiss()V

    .line 118
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog$1;->this$0:Ljp/beyond/bead/BeadDialog;

    invoke-static {v0}, Ljp/beyond/bead/BeadDialog;->access$0(Ljp/beyond/bead/BeadDialog;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog$1;->this$0:Ljp/beyond/bead/BeadDialog;

    invoke-static {v0}, Ljp/beyond/bead/BeadDialog;->access$0(Ljp/beyond/bead/BeadDialog;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;->onCancelButtonClick(Landroid/view/View;)V

    .line 121
    :cond_0
    return-void
.end method