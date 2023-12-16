.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;
.super Landroid/app/Activity;
.source "EventCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;
    }
.end annotation


# static fields
.field public static final CHANGED:Ljava/lang/String; = "changed"

.field private static final DAYS_OF_WEEK:I = 0x7

.field protected static final EVENT_DETAIL:I = 0x2

.field public static final RESOLVER_URI:Landroid/net/Uri;


# instance fields
.field private mCalendar:Ljava/util/GregorianCalendar;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mNextMonthButton:Landroid/widget/Button;

.field private mPrevMonthButton:Landroid/widget/Button;

.field private mYearMonthTextView:Landroid/widget/TextView;

.field sake_alc:F

.field sake_size:F

.field sake_suu:F

.field today_alc_calory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.eventprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mGridView:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    .line 33
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    .line 35
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mYearMonthTextView:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mPrevMonthButton:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mNextMonthButton:Landroid/widget/Button;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public modoru(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->finish()V

    .line 268
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 135
    const-string v0, "changed"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    invoke-virtual {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 114
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mPrevMonthButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mYearMonthTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    invoke-virtual {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->notifyDataSetChanged()V

    .line 123
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mNextMonthButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mGridView:Landroid/widget/GridView;

    .line 60
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 62
    new-instance v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    invoke-direct {v0, p0, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    .line 64
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mDateCellAdapter:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;

    invoke-direct {v1, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$1;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mYearMonthTextView:Landroid/widget/TextView;

    .line 86
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    .line 88
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 89
    .local v8, "year":I
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 91
    .local v7, "month":I
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mYearMonthTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mPrevMonthButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mPrevMonthButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mNextMonthButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mNextMonthButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.eventprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "c":Landroid/database/Cursor;
    const-string v0, "CALENDAR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Num of records:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    return-void
.end method

.method public setumei(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Setumei;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->finish()V

    .line 262
    return-void
.end method

.method public shuturyoku(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->finish()V

    .line 256
    return-void
.end method
