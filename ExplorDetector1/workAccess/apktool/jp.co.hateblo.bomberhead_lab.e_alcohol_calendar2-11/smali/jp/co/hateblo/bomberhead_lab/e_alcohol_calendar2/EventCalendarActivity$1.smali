.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;
.super Ljava/lang/Object;
.source "EventCalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    .line 65
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x5

    .line 69
    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-static {v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 71
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 72
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v3, p3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 74
    sget-object v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "dateString":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const-class v4, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "date"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method
