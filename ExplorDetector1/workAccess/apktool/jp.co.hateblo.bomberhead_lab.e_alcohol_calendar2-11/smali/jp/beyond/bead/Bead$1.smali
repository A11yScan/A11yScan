.class Ljp/beyond/bead/Bead$1;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/bead/Bead;->createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/bead/Bead;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljp/beyond/bead/Bead;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/bead/Bead$1;->this$0:Ljp/beyond/bead/Bead;

    iput-object p2, p0, Ljp/beyond/bead/Bead$1;->val$activity:Landroid/app/Activity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Ljp/beyond/bead/Bead$1;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$0(Ljp/beyond/bead/Bead;)V

    .line 397
    iget-object v0, p0, Ljp/beyond/bead/Bead$1;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0, p1}, Ljp/beyond/bead/Bead;->access$1(Ljp/beyond/bead/Bead;Landroid/view/View;)V

    .line 398
    return-void
.end method

.method public onDownloadButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 402
    return-void
.end method

.method public onFinishButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Ljp/beyond/bead/Bead$1;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$2(Ljp/beyond/bead/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Ljp/beyond/bead/Bead$1;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$2(Ljp/beyond/bead/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/Bead$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
