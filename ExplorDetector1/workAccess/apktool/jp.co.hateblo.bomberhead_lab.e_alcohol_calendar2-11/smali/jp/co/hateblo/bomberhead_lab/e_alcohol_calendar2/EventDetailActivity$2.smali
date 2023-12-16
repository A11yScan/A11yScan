.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    invoke-virtual {v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    invoke-static {v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "selection":Ljava/lang/String;
    sget-object v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    invoke-static {v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "changed"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 231
    return-void
.end method
