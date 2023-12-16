.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;
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
    name = "DateOnClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;


# direct methods
.method public constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 366
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->mContext:Landroid/content/Context;

    .line 368
    iput-object p2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->mContext:Landroid/content/Context;

    .line 369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, "c":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 381
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toDBDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v6

    .line 393
    :goto_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 394
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->mContext:Landroid/content/Context;

    .line 395
    new-instance v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {v2, v3, p1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;Landroid/view/View;)V

    .line 396
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 397
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 398
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 393
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 399
    .local v0, "datePickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 400
    .end local v0    # "datePickerDialog":Landroid/app/DatePickerDialog;
    :cond_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 387
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-static {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->access$3(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toDBDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v6

    .line 389
    goto :goto_0
.end method
