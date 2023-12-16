.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    const-class v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;

    .line 72
    .local v0, "event":Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;
    const-string v2, "_id"

    invoke-virtual {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    const-string v2, "date"

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    invoke-static {v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method
