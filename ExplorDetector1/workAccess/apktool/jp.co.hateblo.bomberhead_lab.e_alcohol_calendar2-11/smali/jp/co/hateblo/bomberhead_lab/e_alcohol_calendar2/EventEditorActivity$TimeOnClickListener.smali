.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;
.super Ljava/lang/Object;
.source "EventEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeOnClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;


# direct methods
.method public constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 439
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->mContext:Landroid/content/Context;

    .line 441
    iput-object p2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->mContext:Landroid/content/Context;

    .line 442
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 450
    const/4 v6, 0x0

    .line 451
    .local v6, "c":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 455
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toDBDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v6

    .line 467
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 468
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->mContext:Landroid/content/Context;

    .line 469
    new-instance v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {v2, v3, p1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/view/View;)V

    .line 470
    const/16 v3, 0xb

    invoke-virtual {v6, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 471
    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    .line 467
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 472
    .local v0, "timePickerDialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 473
    .end local v0    # "timePickerDialog":Landroid/app/TimePickerDialog;
    :cond_0
    return-void
.end method
