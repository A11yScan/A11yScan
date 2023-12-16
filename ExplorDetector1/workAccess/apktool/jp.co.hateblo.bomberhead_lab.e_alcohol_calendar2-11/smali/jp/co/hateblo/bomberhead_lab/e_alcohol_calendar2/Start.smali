.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;
.super Landroid/app/Activity;
.source "Start.java"


# instance fields
.field private mBeadExit:Ljp/beyond/bead/Bead;

.field private sTime:J

.field s_date:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->mBeadExit:Ljp/beyond/bead/Bead;

    .line 24
    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 123
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 124
    check-cast v1, Landroid/widget/ImageButton;

    .line 125
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 139
    check-cast v5, Landroid/view/ViewGroup;

    .line 140
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 141
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 145
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 126
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 127
    check-cast v2, Landroid/widget/ImageView;

    .line 128
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 130
    check-cast v2, Landroid/widget/TextView;

    .line 131
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 133
    check-cast v3, Landroid/widget/SeekBar;

    .line 134
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 142
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->cleanupView(Landroid/view/View;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private save_date(Ljava/lang/String;J)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "sTime"    # J

    .prologue
    .line 64
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sTime"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method


# virtual methods
.method public no(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->setContentView(I)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 100
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->finish()V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->finish()V

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 92
    return-void
.end method

.method public yes(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->sTime:J

    .line 42
    const-string v2, "pref"

    iget-wide v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->sTime:J

    invoke-direct {p0, v2, v3, v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->save_date(Ljava/lang/String;J)V

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "The start date was set to today\u2019s date."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    const-string v2, "OK"

    new-instance v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;

    invoke-direct {v3, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 57
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method
