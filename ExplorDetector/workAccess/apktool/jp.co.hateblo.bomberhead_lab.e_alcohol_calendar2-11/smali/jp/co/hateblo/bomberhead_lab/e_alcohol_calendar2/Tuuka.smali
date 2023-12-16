.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;
.super Landroid/app/Activity;
.source "Tuuka.java"


# instance fields
.field eki11:Ljava/lang/String;

.field hyouji:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->hyouji:I

    .line 17
    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 88
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 89
    check-cast v1, Landroid/widget/ImageButton;

    .line 90
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 104
    check-cast v5, Landroid/view/ViewGroup;

    .line 105
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 106
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 110
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 91
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 92
    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 94
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 95
    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 98
    check-cast v3, Landroid/widget/SeekBar;

    .line 99
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 107
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->cleanupView(Landroid/view/View;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private save_eki11(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "eki11"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "eki11"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method private save_hyouji(Ljava/lang/String;I)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "hyouji"    # I

    .prologue
    .line 62
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hyouji"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method


# virtual methods
.method public hozon(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    const v3, 0x7f070001

    invoke-virtual {p0, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 42
    .local v0, "editText11":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "eki11":Ljava/lang/String;
    :try_start_0
    const-string v3, "pref"

    invoke-direct {p0, v3, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->save_eki11(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Kakakuhyou;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->finish()V

    .line 56
    return-void

    .line 47
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "eki11"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "eki11"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public load_hyouji(Ljava/lang/String;I)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "hyouji"    # I

    .prologue
    .line 69
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "hyouji"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->setContentView(I)V

    .line 27
    const-string v1, "pref"

    iget v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->hyouji:I

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->load_hyouji(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->hyouji:I

    .line 28
    iget v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->hyouji:I

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->eki11:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->eki11:Ljava/lang/String;

    .line 34
    :cond_0
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 35
    .local v0, "editText11":Landroid/widget/EditText;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;->eki11:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
