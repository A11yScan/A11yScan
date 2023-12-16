.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;
.super Ljava/lang/Object;
.source "EventEditorActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSetListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;


# direct methods
.method public constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 482
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->mView:Landroid/view/View;

    .line 485
    iput-object p2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->mView:Landroid/view/View;

    .line 486
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "picker"    # Landroid/widget/TimePicker;
    .param p2, "h"    # I
    .param p3, "m"    # I

    .prologue
    .line 496
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 497
    .local v0, "c":Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 498
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 500
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->mView:Landroid/view/View;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 501
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->mView:Landroid/view/View;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$3(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 503
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$3(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
