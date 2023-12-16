.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;
.super Landroid/app/Activity;
.source "Konomama.java"


# static fields
.field public static final RESOLVER_URI:Landroid/net/Uri;


# instance fields
.field eki11:Ljava/lang/String;

.field kakaku_b_chuu_jokki:F

.field kakaku_b_dai_jokki:F

.field kakaku_b_glass:F

.field kakaku_b_s_350ml:F

.field kakaku_b_s_500ml:F

.field kakaku_b_shou_jokki:F

.field kakaku_bh_chuu_jokki:F

.field kakaku_bh_dai_jokki:F

.field kakaku_bh_glass:F

.field kakaku_bh_s_350ml:F

.field kakaku_bh_s_500ml:F

.field kakaku_bh_shou_jokki:F

.field kakaku_bl_bottle:F

.field kakaku_bl_double:F

.field kakaku_bl_single:F

.field kakaku_ch_350ml:F

.field kakaku_ch_500ml:F

.field kakaku_ch_glass:F

.field kakaku_ck_350ml:F

.field kakaku_ck_500ml:F

.field kakaku_ck_glass:F

.field kakaku_n_bottle:F

.field kakaku_n_cup:F

.field kakaku_sc_bottle:F

.field kakaku_sc_glass:F

.field kakaku_sc_m_glass:F

.field kakaku_u_bottle:F

.field kakaku_u_glass:F

.field kakaku_u_m_350ml:F

.field kakaku_u_m_500ml:F

.field kakaku_u_m_glass:F

.field kakaku_w_bottle:F

.field kakaku_w_f_bottle:F

.field kakaku_w_glass:F

.field kakaku_w_h_bottle:F

.field kakaku_w_m_350ml:F

.field kakaku_w_m_500ml:F

.field kakaku_w_m_ch_glass:F

.field kakaku_w_m_glass:F

.field kakaku_w_r_double:F

.field kakaku_w_r_single:F

.field private mContentResolver:Landroid/content/ContentResolver;

.field ruiseki_alc_calory:I

.field ruiseki_sake_kingaku:F

.field sake_alc:F

.field sake_kingaku:F

.field sake_size:F

.field sake_suu:F

.field start_alc_calory:F

.field start_sake_kingaku:F

.field suu_b_chuu_jokki:F

.field suu_b_dai_jokki:F

.field suu_b_glass:F

.field suu_b_s_350ml:F

.field suu_b_s_500ml:F

.field suu_b_shou_jokki:F

.field suu_bh_chuu_jokki:F

.field suu_bh_dai_jokki:F

.field suu_bh_glass:F

.field suu_bh_s_350ml:F

.field suu_bh_s_500ml:F

.field suu_bh_shou_jokki:F

.field suu_bl_bottle:F

.field suu_bl_double:F

.field suu_bl_single:F

.field suu_ch_350ml:F

.field suu_ch_500ml:F

.field suu_ch_glass:F

.field suu_ck_350ml:F

.field suu_ck_500ml:F

.field suu_ck_glass:F

.field suu_n_bottle:F

.field suu_n_cup:F

.field suu_sc_bottle:F

.field suu_sc_glass:F

.field suu_sc_m_glass:F

.field suu_u_bottle:F

.field suu_u_glass:F

.field suu_u_m_350ml:F

.field suu_u_m_500ml:F

.field suu_u_m_glass:F

.field suu_w_bottle:F

.field suu_w_f_bottle:F

.field suu_w_glass:F

.field suu_w_h_bottle:F

.field suu_w_m_350ml:F

.field suu_w_m_500ml:F

.field suu_w_m_ch_glass:F

.field suu_w_m_glass:F

.field suu_w_r_double:F

.field suu_w_r_single:F

.field private y10_fat_view:Landroid/widget/TextView;

.field private y10_kingaku_view:Landroid/widget/TextView;

.field private y15_fat_view:Landroid/widget/TextView;

.field private y15_kingaku_view:Landroid/widget/TextView;

.field private y20_fat_view:Landroid/widget/TextView;

.field private y20_kingaku_view:Landroid/widget/TextView;

.field private y5_fat_view:Landroid/widget/TextView;

.field private y5_kingaku_view:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.eventprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->RESOLVER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->ruiseki_alc_calory:I

    .line 32
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->sake_kingaku:F

    .line 33
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->ruiseki_sake_kingaku:F

    .line 34
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    .line 35
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    .line 38
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_fat_view:Landroid/widget/TextView;

    .line 42
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_fat_view:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_fat_view:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_fat_view:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_kingaku_view:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_kingaku_view:Landroid/widget/TextView;

    .line 47
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_kingaku_view:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_kingaku_view:Landroid/widget/TextView;

    .line 50
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_dai_jokki:F

    .line 51
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_chuu_jokki:F

    .line 52
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_shou_jokki:F

    .line 53
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_glass:F

    .line 54
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_350ml:F

    .line 55
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_500ml:F

    .line 56
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_dai_jokki:F

    .line 57
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_chuu_jokki:F

    .line 58
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_shou_jokki:F

    .line 59
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_glass:F

    .line 60
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_350ml:F

    .line 61
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_500ml:F

    .line 62
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_glass:F

    .line 63
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_bottle:F

    .line 64
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_m_glass:F

    .line 65
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_glass:F

    .line 66
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_350ml:F

    .line 67
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_500ml:F

    .line 68
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_glass:F

    .line 69
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_h_bottle:F

    .line 70
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_f_bottle:F

    .line 71
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_cup:F

    .line 72
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_bottle:F

    .line 73
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_single:F

    .line 74
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_double:F

    .line 75
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_bottle:F

    .line 76
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_glass:F

    .line 77
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_ch_glass:F

    .line 78
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_350ml:F

    .line 79
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_500ml:F

    .line 80
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_single:F

    .line 81
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_double:F

    .line 82
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_bottle:F

    .line 83
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_glass:F

    .line 84
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_350ml:F

    .line 85
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_500ml:F

    .line 86
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_glass:F

    .line 87
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_bottle:F

    .line 88
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_glass:F

    .line 89
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_350ml:F

    .line 90
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_500ml:F

    .line 26
    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 794
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 795
    check-cast v1, Landroid/widget/ImageButton;

    .line 796
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 810
    check-cast v5, Landroid/view/ViewGroup;

    .line 811
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 812
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 816
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 797
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 798
    check-cast v2, Landroid/widget/ImageView;

    .line 799
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 800
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 801
    check-cast v2, Landroid/widget/TextView;

    .line 802
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 803
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 804
    check-cast v3, Landroid/widget/SeekBar;

    .line 805
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 813
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->cleanupView(Landroid/view/View;)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public karenda(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->startActivity(Landroid/content/Intent;)V

    .line 566
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->finish()V

    .line 567
    return-void
.end method

.method public load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "eki11"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "eki11"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public load_kakaku_b_chuu_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_chuu_jokki"    # F

    .prologue
    .line 594
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_chuu_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_b_dai_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_dai_jokki"    # F

    .prologue
    .line 589
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 590
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_dai_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_b_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_glass"    # F

    .prologue
    .line 604
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 605
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_b_s_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_s_350ml"    # F

    .prologue
    .line 609
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 610
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_s_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_b_s_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_s_500ml"    # F

    .prologue
    .line 614
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_s_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_b_shou_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_shou_jokki"    # F

    .prologue
    .line 599
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_b_shou_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_chuu_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_chuu_jokki"    # F

    .prologue
    .line 624
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 625
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_chuu_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_dai_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_dai_jokki"    # F

    .prologue
    .line 619
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_dai_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_glass"    # F

    .prologue
    .line 634
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 635
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_s_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_s_350ml"    # F

    .prologue
    .line 639
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 640
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_s_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_s_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_s_500ml"    # F

    .prologue
    .line 644
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_s_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bh_shou_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bh_shou_jokki"    # F

    .prologue
    .line 629
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bh_shou_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bl_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bl_bottle"    # F

    .prologue
    .line 749
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 750
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bl_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bl_double(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bl_double"    # F

    .prologue
    .line 744
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 745
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bl_double"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_bl_single(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_bl_single"    # F

    .prologue
    .line 739
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_bl_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ch_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ch_350ml"    # F

    .prologue
    .line 669
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 670
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ch_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ch_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ch_500ml"    # F

    .prologue
    .line 674
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 675
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ch_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ch_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ch_glass"    # F

    .prologue
    .line 664
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 665
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ch_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ck_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ck_350ml"    # F

    .prologue
    .line 759
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 760
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ck_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ck_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ck_500ml"    # F

    .prologue
    .line 764
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 765
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ck_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_ck_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_ck_glass"    # F

    .prologue
    .line 754
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 755
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_ck_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_n_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_n_bottle"    # F

    .prologue
    .line 699
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 700
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_n_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_n_cup(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_n_cup"    # F

    .prologue
    .line 694
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 695
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_n_cup"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_sc_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_sc_bottle"    # F

    .prologue
    .line 654
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_sc_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_sc_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_sc_glass"    # F

    .prologue
    .line 649
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_sc_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_sc_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_sc_m_glass"    # F

    .prologue
    .line 659
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_sc_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_u_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_u_bottle"    # F

    .prologue
    .line 774
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 775
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_u_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_u_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_u_glass"    # F

    .prologue
    .line 769
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 770
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_u_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_u_m_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_u_m_350ml"    # F

    .prologue
    .line 784
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 785
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_u_m_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_u_m_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_u_m_500ml"    # F

    .prologue
    .line 789
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 790
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_u_m_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_u_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_u_m_glass"    # F

    .prologue
    .line 779
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 780
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_u_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_bottle"    # F

    .prologue
    .line 714
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 715
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_f_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_f_bottle"    # F

    .prologue
    .line 689
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 690
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_f_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_glass"    # F

    .prologue
    .line 679
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_h_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_h_bottle"    # F

    .prologue
    .line 684
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 685
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_h_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_m_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_m_350ml"    # F

    .prologue
    .line 729
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 730
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_m_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_m_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_m_500ml"    # F

    .prologue
    .line 734
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_m_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_m_ch_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_m_ch_glass"    # F

    .prologue
    .line 724
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_m_ch_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_m_glass"    # F

    .prologue
    .line 719
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_r_double(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_r_double"    # F

    .prologue
    .line 709
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 710
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_r_double"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_kakaku_w_r_single(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_w_r_single"    # F

    .prologue
    .line 704
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_r_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_start_alc_calory(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "start_alc_calory"    # F

    .prologue
    .line 583
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 584
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "start_alc_calory"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_stime(Ljava/lang/String;J)J
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "sTime"    # J

    .prologue
    .line 577
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 578
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "sTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public load_suu_b_chuu_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_chuu_jokki"    # F

    .prologue
    .line 363
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 364
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_chuu_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_b_dai_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_dai_jokki"    # F

    .prologue
    .line 358
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_dai_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_b_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_glass"    # F

    .prologue
    .line 373
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_b_s_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_s_350ml"    # F

    .prologue
    .line 378
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_s_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_b_s_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_s_500ml"    # F

    .prologue
    .line 383
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_s_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_b_shou_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_b_shou_jokki"    # F

    .prologue
    .line 368
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_b_shou_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_chuu_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_chuu_jokki"    # F

    .prologue
    .line 393
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 394
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_chuu_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_dai_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_dai_jokki"    # F

    .prologue
    .line 388
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_dai_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_glass"    # F

    .prologue
    .line 403
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_s_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_s_350ml"    # F

    .prologue
    .line 408
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_s_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_s_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_s_500ml"    # F

    .prologue
    .line 413
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_s_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bh_shou_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bh_shou_jokki"    # F

    .prologue
    .line 398
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 399
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bh_shou_jokki"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bl_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bl_bottle"    # F

    .prologue
    .line 518
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bl_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bl_double(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bl_double"    # F

    .prologue
    .line 513
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bl_double"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_bl_single(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_bl_single"    # F

    .prologue
    .line 508
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 509
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_bl_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ch_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ch_350ml"    # F

    .prologue
    .line 438
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ch_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ch_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ch_500ml"    # F

    .prologue
    .line 443
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 444
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ch_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ch_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ch_glass"    # F

    .prologue
    .line 433
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 434
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ch_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ck_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ck_350ml"    # F

    .prologue
    .line 528
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 529
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ck_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ck_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ck_500ml"    # F

    .prologue
    .line 533
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ck_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_ck_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_ck_glass"    # F

    .prologue
    .line 523
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_ck_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_n_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_n_bottle"    # F

    .prologue
    .line 468
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_n_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_n_cup(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_n_cup"    # F

    .prologue
    .line 463
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 464
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_n_cup"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_sc_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_sc_bottle"    # F

    .prologue
    .line 423
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 424
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_sc_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_sc_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_sc_glass"    # F

    .prologue
    .line 418
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_sc_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_sc_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_sc_m_glass"    # F

    .prologue
    .line 428
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 429
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_sc_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_u_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_u_bottle"    # F

    .prologue
    .line 543
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_u_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_u_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_u_glass"    # F

    .prologue
    .line 538
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 539
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_u_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_u_m_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_u_m_350ml"    # F

    .prologue
    .line 553
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 554
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_u_m_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_u_m_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_u_m_500ml"    # F

    .prologue
    .line 558
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 559
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_u_m_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_u_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_u_m_glass"    # F

    .prologue
    .line 548
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_u_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_bottle"    # F

    .prologue
    .line 483
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 484
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_f_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_f_bottle"    # F

    .prologue
    .line 458
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_f_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_glass"    # F

    .prologue
    .line 448
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_h_bottle(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_h_bottle"    # F

    .prologue
    .line 453
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_h_bottle"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_m_350ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_m_350ml"    # F

    .prologue
    .line 498
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_m_350ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_m_500ml(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_m_500ml"    # F

    .prologue
    .line 503
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_m_500ml"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_m_ch_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_m_ch_glass"    # F

    .prologue
    .line 493
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_m_ch_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_m_glass(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_m_glass"    # F

    .prologue
    .line 488
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 489
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_m_glass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_r_double(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_r_double"    # F

    .prologue
    .line 478
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_r_double"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public load_suu_w_r_single(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "suu_w_r_single"    # F

    .prologue
    .line 473
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 474
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_r_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public modoru(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->startActivity(Landroid/content/Intent;)V

    .line 572
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->finish()V

    .line 573
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v12, 0x7f030005

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->setContentView(I)V

    .line 139
    new-instance v12, Lcom/directtap/DirectTap$Starter;

    const-string v13, "a5f9fd198d5a462015746ccd8a7db56f41d7130501"

    invoke-direct {v12, p0, v13}, Lcom/directtap/DirectTap$Starter;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/directtap/DirectTap$Starter;->start()V

    .line 141
    const-string v12, "pref"

    iget-object v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    .line 142
    const v12, 0x7f070015

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 143
    .local v8, "tuuka1":Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v12, 0x7f070017

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 145
    .local v9, "tuuka2":Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v12, 0x7f070019

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 147
    .local v10, "tuuka3":Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v12, 0x7f07001b

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 149
    .local v11, "tuuka4":Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->eki11:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_start_alc_calory(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    .line 153
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_dai_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_dai_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_dai_jokki:F

    .line 154
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_chuu_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_chuu_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_chuu_jokki:F

    .line 155
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_shou_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_shou_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_shou_jokki:F

    .line 156
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_glass:F

    .line 157
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_s_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_350ml:F

    .line 158
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_b_s_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_500ml:F

    .line 159
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_dai_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_dai_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_dai_jokki:F

    .line 160
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_chuu_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_chuu_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_chuu_jokki:F

    .line 161
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_shou_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_shou_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_shou_jokki:F

    .line 162
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_glass:F

    .line 163
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_s_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_350ml:F

    .line 164
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bh_s_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_500ml:F

    .line 165
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_sc_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_glass:F

    .line 166
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_sc_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_bottle:F

    .line 167
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_sc_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_m_glass:F

    .line 168
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ch_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_glass:F

    .line 169
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ch_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_350ml:F

    .line 170
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ch_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_500ml:F

    .line 171
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_glass:F

    .line 172
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_h_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_h_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_h_bottle:F

    .line 173
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_f_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_f_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_f_bottle:F

    .line 174
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_cup:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_n_cup(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_cup:F

    .line 175
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_n_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_bottle:F

    .line 176
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_single:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_r_single(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_single:F

    .line 177
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_double:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_r_double(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_double:F

    .line 178
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_bottle:F

    .line 179
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_glass:F

    .line 180
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_ch_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_m_ch_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_ch_glass:F

    .line 181
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_m_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_350ml:F

    .line 182
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_w_m_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_500ml:F

    .line 183
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_single:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bl_single(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_single:F

    .line 184
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_double:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bl_double(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_double:F

    .line 185
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_bl_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_bottle:F

    .line 186
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ck_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_glass:F

    .line 187
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ck_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_350ml:F

    .line 188
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_ck_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_500ml:F

    .line 189
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_u_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_glass:F

    .line 190
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_u_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_bottle:F

    .line 191
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_u_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_glass:F

    .line 192
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_u_m_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_350ml:F

    .line 193
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_kakaku_u_m_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_500ml:F

    .line 195
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_dai_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_dai_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_dai_jokki:F

    .line 196
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_chuu_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_chuu_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_chuu_jokki:F

    .line 197
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_shou_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_shou_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_shou_jokki:F

    .line 198
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_glass:F

    .line 199
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_s_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_350ml:F

    .line 200
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_b_s_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_500ml:F

    .line 201
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_dai_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_dai_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_dai_jokki:F

    .line 202
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_chuu_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_chuu_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_chuu_jokki:F

    .line 203
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_shou_jokki:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_shou_jokki(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_shou_jokki:F

    .line 204
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_glass:F

    .line 205
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_s_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_350ml:F

    .line 206
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bh_s_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_500ml:F

    .line 207
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_sc_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_glass:F

    .line 208
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_sc_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_bottle:F

    .line 209
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_sc_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_m_glass:F

    .line 210
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ch_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_glass:F

    .line 211
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ch_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_350ml:F

    .line 212
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ch_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_500ml:F

    .line 213
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_glass:F

    .line 214
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_h_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_h_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_h_bottle:F

    .line 215
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_f_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_f_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_f_bottle:F

    .line 216
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_cup:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_n_cup(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_cup:F

    .line 217
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_n_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_bottle:F

    .line 218
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_single:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_r_single(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_single:F

    .line 219
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_double:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_r_double(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_double:F

    .line 220
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_bottle:F

    .line 221
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_glass:F

    .line 222
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_ch_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_m_ch_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_ch_glass:F

    .line 223
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_m_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_350ml:F

    .line 224
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_w_m_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_500ml:F

    .line 225
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_single:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bl_single(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_single:F

    .line 226
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_double:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bl_double(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_double:F

    .line 227
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_bl_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_bottle:F

    .line 228
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ck_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_glass:F

    .line 229
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ck_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_350ml:F

    .line 230
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_ck_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_500ml:F

    .line 231
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_u_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_glass:F

    .line 232
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_bottle:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_u_bottle(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_bottle:F

    .line 233
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_glass:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_u_m_glass(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_glass:F

    .line 234
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_350ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_u_m_350ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_350ml:F

    .line 235
    const-string v12, "pref"

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_500ml:F

    invoke-virtual {p0, v12, v13}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->load_suu_u_m_500ml(Ljava/lang/String;F)F

    move-result v12

    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_500ml:F

    .line 237
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_dai_jokki:F

    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_dai_jokki:F

    mul-float/2addr v12, v13

    .line 238
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_chuu_jokki:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_chuu_jokki:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 239
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_shou_jokki:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_shou_jokki:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 240
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 241
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 242
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_b_s_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_b_s_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 243
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_dai_jokki:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_dai_jokki:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 244
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_chuu_jokki:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_chuu_jokki:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 245
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_shou_jokki:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_shou_jokki:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 246
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 247
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 248
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bh_s_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bh_s_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 249
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 250
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 251
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_sc_m_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_sc_m_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 252
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 253
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 254
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ch_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ch_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 255
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 256
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_h_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_h_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 257
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_f_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_f_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 258
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_cup:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_cup:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 259
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_n_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_n_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 260
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_single:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_single:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 261
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_r_double:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_r_double:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 262
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 263
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 264
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_ch_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_ch_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 265
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 266
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_w_m_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_w_m_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 267
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_single:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_single:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 268
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_double:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_double:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 269
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_bl_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_bl_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 270
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 271
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 272
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_ck_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_ck_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 273
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 274
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_bottle:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_bottle:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 275
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_glass:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_glass:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 276
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_350ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_350ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 277
    iget v13, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->kakaku_u_m_500ml:F

    iget v14, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->suu_u_m_500ml:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    .line 237
    iput v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    .line 279
    const v12, 0x7f070067

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_fat_view:Landroid/widget/TextView;

    .line 280
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    const/high16 v13, 0x40e00000    # 7.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x43820000    # 260.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "s_y5_fat":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_fat_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\uff0b"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v12, 0x7f070068

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_fat_view:Landroid/widget/TextView;

    .line 283
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    const/high16 v13, 0x40e00000    # 7.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x44020000    # 520.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "s_y10_fat":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_fat_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\uff0b"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v12, 0x7f070069

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_fat_view:Landroid/widget/TextView;

    .line 286
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    const/high16 v13, 0x40e00000    # 7.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x44430000    # 780.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "s_y15_fat":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_fat_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\uff0b"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v12, 0x7f07006a

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_fat_view:Landroid/widget/TextView;

    .line 289
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_alc_calory:F

    const/high16 v13, 0x40e00000    # 7.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x44820000    # 1040.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "s_y20_fat":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_fat_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\uff0b"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const v12, 0x7f07006b

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_kingaku_view:Landroid/widget/TextView;

    .line 293
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    const/high16 v13, 0x43820000    # 260.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "s_y5_kingaku":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y5_kingaku_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\u3000"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v12, 0x7f07006c

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_kingaku_view:Landroid/widget/TextView;

    .line 296
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    const/high16 v13, 0x44020000    # 520.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "s_y10_kingaku":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y10_kingaku_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\u3000"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const v12, 0x7f07006d

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_kingaku_view:Landroid/widget/TextView;

    .line 299
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    const/high16 v13, 0x44430000    # 780.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "s_y15_kingaku":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y15_kingaku_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\u3000"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const v12, 0x7f07006e

    invoke-virtual {p0, v12}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_kingaku_view:Landroid/widget/TextView;

    .line 302
    iget v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->start_sake_kingaku:F

    const/high16 v13, 0x44820000    # 1040.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "s_y20_kingaku":Ljava/lang/String;
    iget-object v12, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->y20_kingaku_view:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u3000\u3000"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 327
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->finish()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 340
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;->finish()V

    .line 344
    const/4 v0, 0x1

    .line 347
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
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 311
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    new-instance v0, Lcom/directtap/DirectTap$Icon;

    invoke-direct {v0, p0}, Lcom/directtap/DirectTap$Icon;-><init>(Landroid/app/Activity;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconSize(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconPosition(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconNumber(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconOrientation(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/directtap/DirectTap$Icon;->setRefreshTimeInterval(J)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$Icon;->showOverlay()V

    .line 335
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 319
    return-void
.end method
