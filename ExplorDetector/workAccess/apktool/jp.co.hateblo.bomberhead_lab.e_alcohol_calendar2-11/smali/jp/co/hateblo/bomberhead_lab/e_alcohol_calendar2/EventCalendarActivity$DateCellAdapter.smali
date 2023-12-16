.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateCellAdapter"
.end annotation


# static fields
.field private static final NUM_OF_CELLS:I = 0x2a

.field private static final NUM_ROWS:I = 0x6


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 157
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 158
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x2a

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 196
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 197
    const v0, 0x7f070004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 198
    .local v8, "dayOfMonthView":Landroid/widget/TextView;
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-static {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    .line 199
    .local v7, "cal":Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    rem-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_2

    .line 203
    const v0, 0x7f040007

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 209
    :goto_0
    const v0, 0x7f070005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 212
    .local v10, "scheduleView":Landroid/widget/TextView;
    const-string v3, "gd_when_startTime LIKE ?"

    .line 213
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 214
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v5, "gd_when_startTime"

    .line 217
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-static {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v9, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v1, v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kcal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "Fat"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v1, v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    div-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    if-lez v0, :cond_1

    .line 244
    const/high16 v0, -0x10000

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const/4 v1, 0x0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    .line 248
    return-object p2

    .line 204
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "scheduleView":Landroid/widget/TextView;
    :cond_2
    rem-int/lit8 v0, p1, 0x7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 205
    const v0, 0x7f040009

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 207
    :cond_3
    const v0, 0x7f040002

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 229
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "scheduleView":Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const-string v1, "m_drink_alc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_alc:F

    .line 230
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const-string v1, "m_drink_size"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_size:F

    .line 231
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    const-string v1, "m_sake_suu"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_suu:F

    .line 232
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_alc:F

    iget-object v11, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v11, v11, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_size:F

    mul-float/2addr v2, v11

    iget-object v11, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity$DateCellAdapter;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    iget v11, v11, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->sake_suu:F

    mul-float/2addr v2, v11

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->today_alc_calory:I

    goto/16 :goto_1
.end method
