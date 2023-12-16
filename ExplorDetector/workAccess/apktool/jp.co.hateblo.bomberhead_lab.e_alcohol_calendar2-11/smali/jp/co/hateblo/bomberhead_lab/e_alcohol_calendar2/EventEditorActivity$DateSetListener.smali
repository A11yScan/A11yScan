.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;
.super Ljava/lang/Object;
.source "EventEditorActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateSetListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;


# direct methods
.method public constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 408
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->mView:Landroid/view/View;

    .line 411
    iput-object p2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->mView:Landroid/view/View;

    .line 412
    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "picker"    # Landroid/widget/DatePicker;
    .param p2, "y"    # I
    .param p3, "m"    # I
    .param p4, "d"    # I

    .prologue
    .line 422
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 423
    .local v0, "c":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;->set(III)V

    .line 425
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->mView:Landroid/view/View;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 426
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->mView:Landroid/view/View;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 428
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
