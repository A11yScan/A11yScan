.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;
.super Landroid/app/Activity;
.source "SplushActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;
    }
.end annotation


# instance fields
.field hyouji:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->hyouji:I

    .line 22
    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 66
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 67
    check-cast v1, Landroid/widget/ImageButton;

    .line 68
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 82
    check-cast v5, Landroid/view/ViewGroup;

    .line 83
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 84
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 88
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 69
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 70
    check-cast v2, Landroid/widget/ImageView;

    .line 71
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 72
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 76
    check-cast v3, Landroid/widget/SeekBar;

    .line 77
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->cleanupView(Landroid/view/View;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public load_hyouji(Ljava/lang/String;I)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "hyouji"    # I

    .prologue
    .line 61
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "hyouji"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->setContentView(I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 32
    .local v0, "hdl":Landroid/os/Handler;
    new-instance v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;

    invoke-direct {v1, p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->finish()V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->moveTaskToBack(Z)Z

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
