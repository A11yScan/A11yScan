.class Ljp/beyond/bead/Bead$2;
.super Ljava/lang/Object;
.source "Bead.java"

# interfaces
.implements Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/bead/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
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
    iput-object p1, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    iput-object p2, p0, Ljp/beyond/bead/Bead$2;->val$activity:Landroid/app/Activity;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$4(Ljp/beyond/bead/Bead;)Ljp/beyond/bead/BeadConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$4(Ljp/beyond/bead/Bead;)Ljp/beyond/bead/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->executeRequest()V

    .line 443
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0, p1}, Ljp/beyond/bead/Bead;->access$1(Ljp/beyond/bead/Bead;Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public onDownloadButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    iget-object v1, p0, Ljp/beyond/bead/Bead$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ljp/beyond/bead/Bead;->access$3(Ljp/beyond/bead/Bead;Landroid/app/Activity;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onFinishButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$2(Ljp/beyond/bead/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->this$0:Ljp/beyond/bead/Bead;

    invoke-static {v0}, Ljp/beyond/bead/Bead;->access$2(Ljp/beyond/bead/Bead;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/Bead$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
