.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;
.super Landroid/app/Activity;
.source "Shuturyoku.java"


# static fields
.field public static final RESOLVER_URI:Landroid/net/Uri;


# instance fields
.field b_alc:F

.field bh_alc:F

.field bl_alc:F

.field ch_alc:F

.field ck_alc:F

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

.field private mBeadExit:Ljp/beyond/bead/Bead;

.field private mContentResolver:Landroid/content/ContentResolver;

.field n_alc:F

.field ruiseki_alc_calory:I

.field private ruiseki_calory_kaizen_fat_view:Landroid/widget/TextView;

.field private ruiseki_calory_kaizen_view:Landroid/widget/TextView;

.field private ruiseki_calory_view:Landroid/widget/TextView;

.field private ruiseki_fat_view:Landroid/widget/TextView;

.field private ruiseki_kingaku_kaizen_view:Landroid/widget/TextView;

.field private ruiseki_kingaku_view:Landroid/widget/TextView;

.field ruiseki_sake_kingaku:I

.field sake_alc:F

.field sake_kingaku:I

.field sake_size:F

.field sake_suu:F

.field sc_alc:F

.field sc_m_alc:F

.field start_alc_calory:F

.field start_sake_kingaku:I

.field private stime:J

.field private stime_View:Landroid/widget/TextView;

.field private stime_View2:Landroid/widget/TextView;

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

.field u_alc:F

.field u_m_alc:F

.field w_m_alc:F

.field w_r_alc:F

.field wine_alc:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://jp.co.hateblo.bomberhead_lab.e_alcohol_calendar2.eventprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->RESOLVER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const v6, 0x4017ae14    # 2.37f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->mBeadExit:Ljp/beyond/bead/Bead;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime:J

    .line 34
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View:Landroid/widget/TextView;

    .line 35
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View2:Landroid/widget/TextView;

    .line 37
    iput v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    .line 41
    iput v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_kingaku:I

    .line 42
    iput v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_sake_kingaku:I

    .line 43
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_alc_calory:F

    .line 44
    iput v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_sake_kingaku:I

    .line 46
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_view:Landroid/widget/TextView;

    .line 50
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_fat_view:Landroid/widget/TextView;

    .line 51
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_view:Landroid/widget/TextView;

    .line 52
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_view:Landroid/widget/TextView;

    .line 53
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_fat_view:Landroid/widget/TextView;

    .line 54
    iput-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_kaizen_view:Landroid/widget/TextView;

    .line 56
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->b_alc:F

    .line 57
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->bh_alc:F

    .line 58
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sc_alc:F

    .line 59
    iput v5, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sc_m_alc:F

    .line 60
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ch_alc:F

    .line 61
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->wine_alc:F

    .line 62
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->n_alc:F

    .line 63
    iput v6, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->w_r_alc:F

    .line 64
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->w_m_alc:F

    .line 65
    iput v6, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->bl_alc:F

    .line 66
    const v0, 0x3ed1eb85    # 0.41f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ck_alc:F

    .line 67
    const v0, 0x3fc7ae14    # 1.56f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->u_alc:F

    .line 68
    iput v5, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->u_m_alc:F

    .line 70
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_dai_jokki:F

    .line 71
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_chuu_jokki:F

    .line 72
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_shou_jokki:F

    .line 73
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_glass:F

    .line 74
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_350ml:F

    .line 75
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_500ml:F

    .line 76
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_dai_jokki:F

    .line 77
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_chuu_jokki:F

    .line 78
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_shou_jokki:F

    .line 79
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_glass:F

    .line 80
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_350ml:F

    .line 81
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_500ml:F

    .line 82
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_glass:F

    .line 83
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_bottle:F

    .line 84
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_m_glass:F

    .line 85
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_glass:F

    .line 86
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_350ml:F

    .line 87
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_500ml:F

    .line 88
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_glass:F

    .line 89
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_h_bottle:F

    .line 90
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_f_bottle:F

    .line 91
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_cup:F

    .line 92
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_bottle:F

    .line 93
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_single:F

    .line 94
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_double:F

    .line 95
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_bottle:F

    .line 96
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_glass:F

    .line 97
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_ch_glass:F

    .line 98
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_350ml:F

    .line 99
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_500ml:F

    .line 100
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_single:F

    .line 101
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_double:F

    .line 102
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_bottle:F

    .line 103
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_glass:F

    .line 104
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_350ml:F

    .line 105
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_500ml:F

    .line 106
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_glass:F

    .line 107
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_bottle:F

    .line 108
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_glass:F

    .line 109
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_350ml:F

    .line 110
    iput v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_500ml:F

    .line 30
    return-void
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 824
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 825
    check-cast v1, Landroid/widget/ImageButton;

    .line 826
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 840
    check-cast v5, Landroid/view/ViewGroup;

    .line 841
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 842
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 846
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 827
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 828
    check-cast v2, Landroid/widget/ImageView;

    .line 829
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 830
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 831
    check-cast v2, Landroid/widget/TextView;

    .line 832
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 833
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 834
    check-cast v3, Landroid/widget/SeekBar;

    .line 835
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 843
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->cleanupView(Landroid/view/View;)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public karenda(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->startActivity(Landroid/content/Intent;)V

    .line 602
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->finish()V

    .line 603
    return-void
.end method

.method public load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "eki11"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
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
    .line 624
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 625
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
    .line 619
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 620
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
    .line 634
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 635
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
    .line 639
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 640
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
    .line 644
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
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
    .line 629
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
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
    .line 654
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
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
    .line 649
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
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
    .line 664
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 665
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
    .line 669
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 670
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
    .line 674
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 675
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
    .line 659
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
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
    .line 779
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 780
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
    .line 774
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 775
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
    .line 769
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 770
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
    .line 699
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 700
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
    .line 704
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
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
    .line 694
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 695
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
    .line 789
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 790
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
    .line 794
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 795
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
    .line 784
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 785
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
    .line 729
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 730
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
    .line 724
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
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
    .line 684
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 685
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
    .line 679
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
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
    .line 689
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 690
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
    .line 804
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 805
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
    .line 799
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 800
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
    .line 814
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 815
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
    .line 819
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 820
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
    .line 809
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 810
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
    .line 744
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 745
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
    .line 719
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
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
    .line 709
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 710
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
    .line 714
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 715
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
    .line 759
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 760
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
    .line 764
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 765
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
    .line 754
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 755
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
    .line 749
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 750
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
    .line 739
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
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
    .line 734
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
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
    .line 613
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 614
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
    .line 607
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
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
    .line 399
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
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
    .line 394
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
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
    .line 409
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 410
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
    .line 414
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 415
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
    .line 419
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
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
    .line 404
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
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
    .line 429
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
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
    .line 424
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
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
    .line 439
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 440
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
    .line 444
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
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
    .line 449
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
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
    .line 434
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
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
    .line 554
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
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
    .line 549
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
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
    .line 544
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 545
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
    .line 474
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
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
    .line 479
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 480
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
    .line 469
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
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
    .line 564
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
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
    .line 569
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
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
    .line 559
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 560
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
    .line 504
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
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
    .line 499
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 500
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
    .line 459
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
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
    .line 454
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
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
    .line 464
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
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
    .line 579
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
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
    .line 574
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
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
    .line 589
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 590
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
    .line 594
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
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
    .line 584
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
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
    .line 519
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
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
    .line 494
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 495
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
    .line 484
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
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
    .line 489
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
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
    .line 534
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 535
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
    .line 539
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
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
    .line 529
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 530
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
    .line 524
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 525
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
    .line 514
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
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
    .line 509
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "suu_w_r_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v1, 0x7f030009

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->setContentView(I)V

    .line 160
    new-instance v1, Lcom/directtap/DirectTap$Starter;

    const-string v2, "a5f9fd198d5a462015746ccd8a7db56f41d7130501"

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/directtap/DirectTap$Starter;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/directtap/DirectTap$Starter;->start()V

    .line 162
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->eki11:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_eki11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->eki11:Ljava/lang/String;

    .line 163
    const v1, 0x7f070015

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 164
    .local v19, "tuuka1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->eki11:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v1, 0x7f070017

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 166
    .local v20, "tuuka2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->eki11:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_stime(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime:J

    .line 169
    const v1, 0x7f07007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View:Landroid/widget/TextView;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 171
    .local v9, "now_time":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime:J

    sub-long v1, v9, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x18

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v11, v1, 0x1

    .line 172
    .local v11, "past_day":I
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "s_past_day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 176
    .local v8, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime:J

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    const v1, 0x7f07007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View2:Landroid/widget/TextView;

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->stime_View2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start Date: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    const-string v6, "gd_when_startTime"

    .line 189
    .local v6, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->RESOLVER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 191
    .local v7, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const v1, 0x7f070067

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_view:Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, "s_ruiseki_alc_calory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_view:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v1, 0x7f070068

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_fat_view:Landroid/widget/TextView;

    .line 203
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    div-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "s_ruiseki_alc_calory2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_fat_view:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f070069

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_view:Landroid/widget/TextView;

    .line 207
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_sake_kingaku:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 208
    .local v18, "s_ruiseki_sake_kingaku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_view:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 211
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_alc_calory:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_start_alc_calory(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_alc_calory:F

    .line 213
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_dai_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_dai_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_dai_jokki:F

    .line 214
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_chuu_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_chuu_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_chuu_jokki:F

    .line 215
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_shou_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_shou_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_shou_jokki:F

    .line 216
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_glass:F

    .line 217
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_s_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_350ml:F

    .line 218
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_b_s_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_500ml:F

    .line 219
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_dai_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_dai_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_dai_jokki:F

    .line 220
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_chuu_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_chuu_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_chuu_jokki:F

    .line 221
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_shou_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_shou_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_shou_jokki:F

    .line 222
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_glass:F

    .line 223
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_s_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_350ml:F

    .line 224
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bh_s_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_500ml:F

    .line 225
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_sc_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_glass:F

    .line 226
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_sc_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_bottle:F

    .line 227
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_sc_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_m_glass:F

    .line 228
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ch_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_glass:F

    .line 229
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ch_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_350ml:F

    .line 230
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ch_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_500ml:F

    .line 231
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_glass:F

    .line 232
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_h_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_h_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_h_bottle:F

    .line 233
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_f_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_f_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_f_bottle:F

    .line 234
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_cup:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_n_cup(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_cup:F

    .line 235
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_n_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_bottle:F

    .line 236
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_single:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_r_single(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_single:F

    .line 237
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_double:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_r_double(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_double:F

    .line 238
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_bottle:F

    .line 239
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_glass:F

    .line 240
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_ch_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_m_ch_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_ch_glass:F

    .line 241
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_m_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_350ml:F

    .line 242
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_w_m_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_500ml:F

    .line 243
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_single:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bl_single(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_single:F

    .line 244
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_double:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bl_double(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_double:F

    .line 245
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_bl_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_bottle:F

    .line 246
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ck_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_glass:F

    .line 247
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ck_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_350ml:F

    .line 248
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_ck_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_500ml:F

    .line 249
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_u_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_glass:F

    .line 250
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_u_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_bottle:F

    .line 251
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_u_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_glass:F

    .line 252
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_u_m_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_350ml:F

    .line 253
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_kakaku_u_m_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_500ml:F

    .line 255
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_dai_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_dai_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_dai_jokki:F

    .line 256
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_chuu_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_chuu_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_chuu_jokki:F

    .line 257
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_shou_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_shou_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_shou_jokki:F

    .line 258
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_glass:F

    .line 259
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_s_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_350ml:F

    .line 260
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_b_s_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_500ml:F

    .line 261
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_dai_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_dai_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_dai_jokki:F

    .line 262
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_chuu_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_chuu_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_chuu_jokki:F

    .line 263
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_shou_jokki:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_shou_jokki(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_shou_jokki:F

    .line 264
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_glass:F

    .line 265
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_s_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_350ml:F

    .line 266
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bh_s_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_500ml:F

    .line 267
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_sc_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_glass:F

    .line 268
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_sc_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_bottle:F

    .line 269
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_sc_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_m_glass:F

    .line 270
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ch_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_glass:F

    .line 271
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ch_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_350ml:F

    .line 272
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ch_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_500ml:F

    .line 273
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_glass:F

    .line 274
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_h_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_h_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_h_bottle:F

    .line 275
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_f_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_f_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_f_bottle:F

    .line 276
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_cup:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_n_cup(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_cup:F

    .line 277
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_n_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_bottle:F

    .line 278
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_single:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_r_single(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_single:F

    .line 279
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_double:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_r_double(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_double:F

    .line 280
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_bottle:F

    .line 281
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_glass:F

    .line 282
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_ch_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_m_ch_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_ch_glass:F

    .line 283
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_m_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_350ml:F

    .line 284
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_w_m_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_500ml:F

    .line 285
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_single:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bl_single(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_single:F

    .line 286
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_double:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bl_double(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_double:F

    .line 287
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_bl_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_bottle:F

    .line 288
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ck_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_glass:F

    .line 289
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ck_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_350ml:F

    .line 290
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_ck_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_500ml:F

    .line 291
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_u_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_glass:F

    .line 292
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_bottle:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_u_bottle(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_bottle:F

    .line 293
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_glass:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_u_m_glass(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_glass:F

    .line 294
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_350ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_u_m_350ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_350ml:F

    .line 295
    const-string v1, "pref"

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_500ml:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->load_suu_u_m_500ml(Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_500ml:F

    .line 297
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_dai_jokki:F

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_dai_jokki:F

    mul-float/2addr v1, v2

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_chuu_jokki:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_chuu_jokki:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_shou_jokki:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_shou_jokki:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 301
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 302
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_b_s_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_b_s_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_dai_jokki:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_dai_jokki:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_chuu_jokki:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_chuu_jokki:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 305
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_shou_jokki:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_shou_jokki:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 307
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 308
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bh_s_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bh_s_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 309
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 310
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 311
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_sc_m_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_sc_m_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 312
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ch_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ch_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 315
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 316
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_h_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_h_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_f_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_f_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_cup:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_cup:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_n_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_n_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_single:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_single:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 321
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_r_double:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_r_double:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 322
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 323
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_ch_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_ch_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 326
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_w_m_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_w_m_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_single:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_single:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 328
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_double:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_double:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_bl_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_bl_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 330
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_ck_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_ck_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_bottle:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_bottle:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 335
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_glass:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_glass:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_350ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_350ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 337
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->kakaku_u_m_500ml:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->suu_u_m_500ml:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 297
    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_sake_kingaku:I

    .line 339
    const v1, 0x7f07006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_view:Landroid/widget/TextView;

    .line 340
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_alc_calory:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    int-to-float v2, v11

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 341
    .local v15, "s_ruiseki_alc_calory_kaizen":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_view:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const v1, 0x7f07006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_fat_view:Landroid/widget/TextView;

    .line 343
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_alc_calory:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    int-to-float v2, v11

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 344
    .local v16, "s_ruiseki_alc_calory_kaizen_fat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_calory_kaizen_fat_view:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const v1, 0x7f07006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_kaizen_view:Landroid/widget/TextView;

    .line 346
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->start_sake_kingaku:I

    div-int/lit8 v1, v1, 0x7

    mul-int/2addr v1, v11

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_sake_kingaku:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 347
    .local v17, "s_ruiseki_kingaku_kaizen":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_kingaku_kaizen_view:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void

    .line 192
    .end local v13    # "s_ruiseki_alc_calory":Ljava/lang/String;
    .end local v14    # "s_ruiseki_alc_calory2":Ljava/lang/String;
    .end local v15    # "s_ruiseki_alc_calory_kaizen":Ljava/lang/String;
    .end local v16    # "s_ruiseki_alc_calory_kaizen_fat":Ljava/lang/String;
    .end local v17    # "s_ruiseki_kingaku_kaizen":Ljava/lang/String;
    .end local v18    # "s_ruiseki_sake_kingaku":Ljava/lang/String;
    :cond_0
    const-string v1, "m_drink_alc"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_alc:F

    .line 193
    const-string v1, "m_drink_size"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_size:F

    .line 194
    const-string v1, "m_sake_suu"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_suu:F

    .line 195
    const-string v1, "m_sake_kingaku"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_kingaku:I

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_alc:F

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_size:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_suu:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_alc_calory:I

    .line 197
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_sake_kingaku:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->sake_kingaku:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->ruiseki_sake_kingaku:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 370
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 382
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 385
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;->finish()V

    .line 386
    const/4 v0, 0x1

    .line 389
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
    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 362
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 374
    new-instance v0, Lcom/directtap/DirectTap$Icon;

    invoke-direct {v0, p0}, Lcom/directtap/DirectTap$Icon;-><init>(Landroid/app/Activity;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconSize(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconPosition(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconNumber(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/directtap/DirectTap$Icon;->setIconOrientation(I)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/directtap/DirectTap$Icon;->setRefreshTimeInterval(J)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$Icon;->showOverlay()V

    .line 377
    return-void
.end method
