.class Ljp/beyond/bead/BeadDialog$2;
.super Ljava/lang/Object;
.source "BeadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/bead/BeadDialog;->setDownloadButtonClickListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/bead/BeadDialog;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/beyond/bead/BeadDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/bead/BeadDialog$2;->this$0:Ljp/beyond/bead/BeadDialog;

    iput-object p2, p0, Ljp/beyond/bead/BeadDialog$2;->val$url:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog$2;->this$0:Ljp/beyond/bead/BeadDialog;

    invoke-static {v0}, Ljp/beyond/bead/BeadDialog;->access$0(Ljp/beyond/bead/BeadDialog;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog$2;->this$0:Ljp/beyond/bead/BeadDialog;

    invoke-static {v0}, Ljp/beyond/bead/BeadDialog;->access$0(Ljp/beyond/bead/BeadDialog;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/bead/BeadDialog$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;->onDownloadButtonClick(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
