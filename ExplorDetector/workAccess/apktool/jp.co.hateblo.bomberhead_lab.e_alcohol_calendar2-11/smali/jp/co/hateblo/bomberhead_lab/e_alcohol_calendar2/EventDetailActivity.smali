.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;
.super Landroid/app/Activity;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final EVENT_EDITOR:I = 0x3

.field private static final NEW_EVENT_MENU_ID:I = 0x1


# instance fields
.field cal_view0:Landroid/widget/TextView;

.field cal_view1:Landroid/widget/TextView;

.field cal_view2:Landroid/widget/TextView;

.field calory:F

.field eki11:Ljava/lang/String;

.field private mDateString:Ljava/lang/String;

.field private mDeleteId:J

.field private mEventListView:Landroid/widget/ListView;

.field sake_kingaku:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mEventListView:Landroid/widget/ListView;

    .line 41
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory:F

    .line 42
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->sake_kingaku:F

    .line 43
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->cal_view0:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->cal_view1:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->cal_view2:Landroid/widget/TextView;

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDeleteId:J

    .line 32
    return-void
.end method

.method static synthetic access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDeleteId:J

    return-wide v0
.end method

.method static synthetic access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setListAdapter()V

    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 258
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 259
    check-cast v1, Landroid/widget/ImageButton;

    .line 260
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 274
    check-cast v5, Landroid/view/ViewGroup;

    .line 275
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 276
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 280
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 261
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 262
    check-cast v2, Landroid/widget/ImageView;

    .line 263
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 264
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 265
    check-cast v2, Landroid/widget/TextView;

    .line 266
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 267
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 268
    check-cast v3, Landroid/widget/SeekBar;

    .line 269
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 277
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->cleanupView(Landroid/view/View;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getEventDetail(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 92
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v10, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;>;"
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "gd_when_startTime LIKE ?"

    .line 96
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 97
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v5, "gd_when_startTime"

    .line 98
    .local v5, "sortOrder":Ljava/lang/String;
    sget-object v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory_caluculation()V

    .line 126
    iput v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory:F

    .line 127
    iput v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->sake_kingaku:F

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    return-object v10

    .line 101
    :cond_0
    new-instance v9, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;

    invoke-direct {v9}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;-><init>()V

    .line 103
    .local v9, "event":Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->setId(J)V

    .line 105
    const-string v1, "gd_when_startTime"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->setStart(Ljava/lang/String;)V

    .line 109
    const-string v1, "t_m_sake_shurui"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_t_sake_shurui(Ljava/lang/String;)V

    .line 110
    const-string v1, "m_sake_shurui"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_sake_shurui(Ljava/lang/String;)V

    .line 111
    const-string v1, "m_drink_alc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_drink_alc(Ljava/lang/String;)V

    .line 112
    const-string v1, "m_drink_size"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_drink_size(Ljava/lang/String;)V

    .line 113
    const-string v1, "m_sake_suu"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_sake_suu(Ljava/lang/String;)V

    .line 114
    const-string v1, "m_sake_kingaku"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->set_sake_kingaku(Ljava/lang/String;)V

    .line 116
    const-string v1, "m_drink_alc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 117
    .local v7, "drink_alc":F
    const-string v1, "m_drink_size"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 118
    .local v8, "drink_size":F
    const-string v1, "m_sake_suu"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 119
    .local v11, "sake_suu":F
    iget v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->sake_kingaku:F

    const-string v2, "m_sake_kingaku"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->sake_kingaku:F

    .line 120
    iget v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory:F

    mul-float v2, v7, v8

    mul-float/2addr v2, v11

    add-float/2addr v1, v2

    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory:F

    .line 122
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setListAdapter()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mEventListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->getEventDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method


# virtual methods
.method public calory_caluculation()V
    .locals 4

    .prologue
    .line 133
    const-string v2, "pref"

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->eki11:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->eki11:Ljava/lang/String;

    .line 134
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "cal_view0":Landroid/widget/TextView;
    const-string v2, "Today\u2019s amount of alcohol"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, "cal_view1":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->calory:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Kcal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->sake_kingaku:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->eki11:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public karenda(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->finish()V

    .line 155
    return-void
.end method

.method public load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "eki11"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "eki11"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nyuuryoku(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v1, "date"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 165
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-ne p2, v3, :cond_0

    .line 166
    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setListAdapter()V

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "changed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v3, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    .line 57
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "dateView":Landroid/widget/TextView;
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mEventListView:Landroid/widget/ListView;

    .line 61
    invoke-direct {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->setListAdapter()V

    .line 63
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mEventListView:Landroid/widget/ListView;

    new-instance v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;

    invoke-direct {v3, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$1;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v0, 0x1

    const v1, 0x7f060014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 211
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;

    .line 212
    .local v2, "event":Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;
    invoke-virtual {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDeleteId:J

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f060017

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 218
    const v3, 0x7f060016

    new-instance v4, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;

    invoke-direct {v4, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$2;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    const v3, 0x7f060015

    new-instance v4, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$3;

    invoke-direct {v4, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity$3;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 244
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 245
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v1, "date"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method public shuturyoku(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventDetailActivity;->finish()V

    .line 149
    return-void
.end method
