.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;
.super Landroid/app/Activity;
.source "EventEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateOnClickListener;,
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$DateSetListener;,
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeOnClickListener;,
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity$TimeSetListener;
    }
.end annotation


# instance fields
.field drink:Ljava/lang/String;

.field drink_alc:F

.field drink_kakaku:F

.field drink_size:F

.field drink_suu:F

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

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mBeadExit:Ljp/beyond/bead/Bead;

.field private mContentEditText:Landroid/widget/EditText;

.field private mDateString:Ljava/lang/String;

.field private mDiscardButton:Landroid/widget/Button;

.field private mEndDateTextView:Landroid/widget/TextView;

.field private mEndTimeTextView:Landroid/widget/TextView;

.field private mId:J

.field private mSaveButton:Landroid/widget/Button;

.field private mStartDateTextView:Landroid/widget/TextView;

.field private mStartTimeTextView:Landroid/widget/TextView;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mWhereEditText:Landroid/widget/EditText;

.field private m_sake_shurui_View:Landroid/widget/EditText;

.field private m_sake_suu_View:Landroid/widget/EditText;

.field myIconLoader:Ljp/maru/mrd/IconLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sake_shurui:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mBeadExit:Ljp/beyond/bead/Bead;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 50
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 51
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 52
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 53
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 55
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_dai_jokki:F

    .line 56
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_chuu_jokki:F

    .line 57
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_shou_jokki:F

    .line 58
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_glass:F

    .line 59
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_s_350ml:F

    .line 60
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_b_s_500ml:F

    .line 61
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_dai_jokki:F

    .line 62
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_chuu_jokki:F

    .line 63
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_shou_jokki:F

    .line 64
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_glass:F

    .line 65
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_s_350ml:F

    .line 66
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bh_s_500ml:F

    .line 67
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_sc_glass:F

    .line 68
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_sc_bottle:F

    .line 69
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_sc_m_glass:F

    .line 70
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ch_glass:F

    .line 71
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ch_350ml:F

    .line 72
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ch_500ml:F

    .line 73
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_glass:F

    .line 74
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_h_bottle:F

    .line 75
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_f_bottle:F

    .line 76
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_n_cup:F

    .line 77
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_n_bottle:F

    .line 78
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_r_single:F

    .line 79
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_r_double:F

    .line 80
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_bottle:F

    .line 81
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_m_glass:F

    .line 82
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_m_ch_glass:F

    .line 83
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_m_350ml:F

    .line 84
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_w_m_500ml:F

    .line 85
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bl_single:F

    .line 86
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bl_double:F

    .line 87
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_bl_bottle:F

    .line 88
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ck_glass:F

    .line 89
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ck_350ml:F

    .line 90
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_ck_500ml:F

    .line 91
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_u_glass:F

    .line 92
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_u_bottle:F

    .line 93
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_u_m_glass:F

    .line 94
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_u_m_350ml:F

    .line 95
    iput v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->kakaku_u_m_500ml:F

    .line 98
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 99
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mWhereEditText:Landroid/widget/EditText;

    .line 100
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mContentEditText:Landroid/widget/EditText;

    .line 101
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    .line 102
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    .line 103
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mEndDateTextView:Landroid/widget/TextView;

    .line 104
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mEndTimeTextView:Landroid/widget/TextView;

    .line 105
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDiscardButton:Landroid/widget/Button;

    .line 106
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mSaveButton:Landroid/widget/Button;

    .line 107
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 108
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->m_sake_shurui_View:Landroid/widget/EditText;

    .line 109
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->m_sake_suu_View:Landroid/widget/EditText;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    .line 113
    iput-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDateString:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mEndDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mEndTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static final cleanupView(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1105
    instance-of v6, p0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    move-object v1, p0

    .line 1106
    check-cast v1, Landroid/widget/ImageButton;

    .line 1107
    .local v1, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    .end local v1    # "ib":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p0

    .line 1121
    check-cast v5, Landroid/view/ViewGroup;

    .line 1122
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1123
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 1127
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 1108
    :cond_2
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 1109
    check-cast v2, Landroid/widget/ImageView;

    .line 1110
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1111
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_3
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v2, p0

    .line 1112
    check-cast v2, Landroid/widget/TextView;

    .line 1113
    .local v2, "iv":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1114
    .end local v2    # "iv":Landroid/widget/TextView;
    :cond_4
    instance-of v6, p0, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 1115
    check-cast v3, Landroid/widget/SeekBar;

    .line 1116
    .local v3, "sb":Landroid/widget/SeekBar;
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1124
    .end local v3    # "sb":Landroid/widget/SeekBar;
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->cleanupView(Landroid/view/View;)V

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public b_chuu_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 573
    const/4 v0, 0x2

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 574
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000Medium jug/Medium bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 575
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 576
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 577
    const-string v0, "Beer/Low-malt beer:Medium jug/Medium bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 578
    return-void
.end method

.method public b_dai_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 566
    const/4 v0, 0x1

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 567
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000Large jug/Large bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 568
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 569
    const v0, 0x441d8000    # 630.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 570
    const-string v0, "Beer/Low-malt beer:Large jug/Large bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    return-void
.end method

.method public b_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 587
    const/4 v0, 0x4

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 588
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 589
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 590
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 591
    const-string v0, "Beer/Low-malt beer:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 592
    return-void
.end method

.method public b_s_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 594
    const/4 v0, 0x5

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 595
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 596
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 597
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 598
    const-string v0, "Beer/Low-malt beer:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 599
    return-void
.end method

.method public b_s_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 601
    const/4 v0, 0x6

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 602
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 603
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 604
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 605
    const-string v0, "Beer/Low-malt beer:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 606
    return-void
.end method

.method public b_shou_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 580
    const/4 v0, 0x3

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 581
    const-string v0, ">Beer/Low-malt beer\n\u3000\u3000\u3000\u3000Tumbler"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 582
    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 583
    const/high16 v0, 0x43a50000    # 330.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 584
    const-string v0, "Beer/Low-malt beer:Tumbler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    return-void
.end method

.method public bh_chuu_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 615
    const/16 v0, 0x8

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 616
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000Medium jug/Medium bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 617
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 618
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 619
    const-string v0, "Beer-flavored drink:Medium jug/Medium bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 620
    return-void
.end method

.method public bh_dai_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 608
    const/4 v0, 0x7

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 609
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000Large jug/Large bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 610
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 611
    const v0, 0x441d8000    # 630.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 612
    const-string v0, "Beer-flavored drink:Large jug/Large bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 613
    return-void
.end method

.method public bh_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 629
    const/16 v0, 0xa

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 630
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 631
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 632
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 633
    const-string v0, "Beer-flavored drink:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 634
    return-void
.end method

.method public bh_s_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 636
    const/16 v0, 0xb

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 637
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 638
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 639
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 640
    const-string v0, "Beer-flavored drink:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 641
    return-void
.end method

.method public bh_s_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 643
    const/16 v0, 0xc

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 644
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 645
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 646
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 647
    const-string v0, "Beer-flavored drink:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 648
    return-void
.end method

.method public bh_shou_jokki(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 622
    const/16 v0, 0x9

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 623
    const-string v0, ">Beer-flavored drink\n\u3000\u3000\u3000\u3000Tumbler"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 624
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 625
    const/high16 v0, 0x43a50000    # 330.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 626
    const-string v0, "Beer-flavored drink:Tumbler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    return-void
.end method

.method public bl_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 790
    const/16 v0, 0x21

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 791
    const-string v0, ">Brandy\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 792
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 793
    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 794
    const-string v0, "Brandy:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 795
    return-void
.end method

.method public bl_double(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 783
    const/16 v0, 0x20

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 784
    const-string v0, ">Brandy\n\u3000\u3000\u3000\u3000Double"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 785
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 786
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 787
    const-string v0, "Brandy:Double"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 788
    return-void
.end method

.method public bl_single(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 776
    const/16 v0, 0x1f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 777
    const-string v0, ">Brandy\n\u3000\u3000\u3000\u3000Single"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 778
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 779
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 780
    const-string v0, "Brandy:Single"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 781
    return-void
.end method

.method public by1(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 858
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 859
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    return-void
.end method

.method public by10(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 894
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 895
    const-string v0, "10"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 896
    return-void
.end method

.method public by2(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 862
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 863
    const-string v0, "2"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 864
    return-void
.end method

.method public by3(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 866
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 867
    const-string v0, "3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 868
    return-void
.end method

.method public by4(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 870
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 871
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 872
    return-void
.end method

.method public by5(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 874
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 875
    const-string v0, "5"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 876
    return-void
.end method

.method public by6(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 878
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 879
    const-string v0, "6"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 880
    return-void
.end method

.method public by7(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 882
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 883
    const-string v0, "7"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 884
    return-void
.end method

.method public by8(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 886
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 887
    const-string v0, "8"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 888
    return-void
.end method

.method public by9(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 890
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 891
    const-string v0, "9"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 892
    return-void
.end method

.method public ch_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 678
    const/16 v0, 0x11

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 679
    const-string v0, ">Distilled spirits Cocktail\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 680
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 681
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 682
    const-string v0, "Distilled spirits Cocktail:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 683
    return-void
.end method

.method public ch_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 685
    const/16 v0, 0x12

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 686
    const-string v0, ">Distilled spirits Cocktail\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 687
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 688
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 689
    const-string v0, "Distilled spirits Cocktail:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 690
    return-void
.end method

.method public ch_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 671
    const/16 v0, 0x10

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 672
    const-string v0, ">Distilled spirits Cocktail\n\u3000\u3000\u3000\u3000Tumbler"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 673
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 674
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 675
    const-string v0, "Distilled spirits Cocktail:Tumbler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 676
    return-void
.end method

.method public ck_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 804
    const/16 v0, 0x23

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 805
    const-string v0, ">Cocktail\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 806
    const v0, 0x3ed1eb85    # 0.41f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 807
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 808
    const-string v0, "Cocktail:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 809
    return-void
.end method

.method public ck_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 811
    const/16 v0, 0x24

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 812
    const-string v0, ">Cocktail\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 813
    const v0, 0x3ed1eb85    # 0.41f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 814
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 815
    const-string v0, "Cocktail:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 816
    return-void
.end method

.method public ck_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 797
    const/16 v0, 0x22

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 798
    const-string v0, ">Cocktail\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 799
    const v0, 0x3ed1eb85    # 0.41f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 800
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 801
    const-string v0, "Cocktail:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 802
    return-void
.end method

.method public hyouji_on(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 532
    const/4 v1, 0x2

    .line 534
    .local v1, "hyouji":I
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 535
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 536
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "hyouji"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method public kakaku_settei(Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 540
    const/4 v1, 0x2

    .line 542
    .local v1, "hyouji":I
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 543
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "hyouji"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 546
    const/high16 v4, 0x7f070000

    invoke-virtual {p0, v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->cleanupView(Landroid/view/View;)V

    .line 547
    new-instance v2, Landroid/content/Intent;

    const-class v4, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Kakakuhyou;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 549
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    .line 550
    return-void
.end method

.method public karenda(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 559
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->cleanupView(Landroid/view/View;)V

    .line 560
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 562
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    .line 563
    return-void
.end method

.method public load_kakaku_b_chuu_jokki(Ljava/lang/String;F)F
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "kakaku_b_chuu_jokki"    # F

    .prologue
    .line 905
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 906
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
    .line 900
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 901
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
    .line 915
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 916
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
    .line 920
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 921
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
    .line 925
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 926
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
    .line 910
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 911
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
    .line 935
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 936
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
    .line 930
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 931
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
    .line 945
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 946
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
    .line 950
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 951
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
    .line 955
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 956
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
    .line 940
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 941
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
    .line 1060
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1061
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
    .line 1055
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1056
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
    .line 1050
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1051
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
    .line 980
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 981
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
    .line 985
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
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
    .line 975
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 976
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
    .line 1070
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1071
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
    .line 1075
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1076
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
    .line 1065
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1066
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
    .line 1010
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
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
    .line 1005
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1006
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
    .line 965
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 966
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
    .line 960
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 961
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
    .line 970
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 971
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
    .line 1085
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1086
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
    .line 1080
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1081
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
    .line 1095
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1096
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
    .line 1100
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1101
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
    .line 1090
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1091
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
    .line 1025
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
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
    .line 1000
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1001
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
    .line 990
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 991
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
    .line 995
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 996
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
    .line 1040
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1041
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
    .line 1045
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1046
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
    .line 1035
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1036
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
    .line 1030
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1031
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
    .line 1020
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1021
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
    .line 1015
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1016
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "kakaku_w_r_single"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public n_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 720
    const/16 v0, 0x17

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 721
    const-string v0, ">Sake\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 722
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 723
    const/high16 v0, 0x44e10000    # 1800.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 724
    const-string v0, "Sake:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    return-void
.end method

.method public n_cup(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 713
    const/16 v0, 0x16

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 714
    const-string v0, ">Sake\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 715
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 716
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 717
    const-string v0, "Sake:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 718
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    .line 254
    iget-object v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDiscardButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_1

    .line 256
    const-string v9, "CALENDAR"

    const-string v10, "Discard"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v9, :cond_0

    .line 260
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "t_m_sake_shurui"

    iget-object v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "m_sake_shurui":Ljava/lang/String;
    const-string v9, "m_sake_shurui"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "m_drink_alc":Ljava/lang/String;
    const-string v9, "m_drink_alc"

    invoke-virtual {v7, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "m_drink_size":Ljava/lang/String;
    const-string v9, "m_drink_size"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "m_sake_suu":Ljava/lang/String;
    const-string v9, "m_sake_suu"

    invoke-virtual {v7, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    if-ne v9, v13, :cond_2

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_dai_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 278
    :cond_2
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_chuu_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 279
    :cond_3
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_shou_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 280
    :cond_4
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 281
    :cond_5
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_6

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_s_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 282
    :cond_6
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_7

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_b_s_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 283
    :cond_7
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_8

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_dai_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 284
    :cond_8
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_9

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_chuu_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 285
    :cond_9
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_a

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_shou_jokki(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 286
    :cond_a
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_b

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 287
    :cond_b
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_c

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_s_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 288
    :cond_c
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xc

    if-ne v9, v10, :cond_d

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bh_s_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 289
    :cond_d
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_e

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_sc_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 290
    :cond_e
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_f

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_sc_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 291
    :cond_f
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_10

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_sc_m_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 292
    :cond_10
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_11

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ch_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 293
    :cond_11
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x11

    if-ne v9, v10, :cond_12

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ch_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 294
    :cond_12
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x12

    if-ne v9, v10, :cond_13

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ch_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 295
    :cond_13
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x13

    if-ne v9, v10, :cond_14

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 296
    :cond_14
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_15

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_h_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 297
    :cond_15
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_16

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_f_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 298
    :cond_16
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x16

    if-ne v9, v10, :cond_17

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_n_cup(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 299
    :cond_17
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x17

    if-ne v9, v10, :cond_18

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_n_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 300
    :cond_18
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x18

    if-ne v9, v10, :cond_19

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_r_single(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 301
    :cond_19
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x19

    if-ne v9, v10, :cond_1a

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_r_double(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 302
    :cond_1a
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1a

    if-ne v9, v10, :cond_1b

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 303
    :cond_1b
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_1c

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_m_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 304
    :cond_1c
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1c

    if-ne v9, v10, :cond_1d

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_m_ch_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 305
    :cond_1d
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_1e

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_m_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 306
    :cond_1e
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_1f

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_w_m_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 307
    :cond_1f
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_20

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bl_single(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 308
    :cond_20
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x20

    if-ne v9, v10, :cond_21

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bl_double(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 309
    :cond_21
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x21

    if-ne v9, v10, :cond_22

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_bl_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 310
    :cond_22
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x22

    if-ne v9, v10, :cond_23

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ck_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 311
    :cond_23
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x23

    if-ne v9, v10, :cond_24

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ck_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 312
    :cond_24
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x24

    if-ne v9, v10, :cond_25

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_ck_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 313
    :cond_25
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x25

    if-ne v9, v10, :cond_26

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_u_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 314
    :cond_26
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x26

    if-ne v9, v10, :cond_27

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_u_bottle(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 315
    :cond_27
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x27

    if-ne v9, v10, :cond_28

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_u_m_glass(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 316
    :cond_28
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x28

    if-ne v9, v10, :cond_29

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_u_m_350ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 317
    :cond_29
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    const/16 v10, 0x29

    if-ne v9, v10, :cond_2a

    const-string v9, "pref"

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    invoke-virtual {p0, v9, v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->load_kakaku_u_m_500ml(Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    .line 319
    :cond_2a
    iget v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_kakaku:F

    iget v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "m_sake_kakaku":Ljava/lang/String;
    const-string v9, "m_sake_kingaku"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v9, "gd_when_startTime"

    .line 333
    iget-object v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 334
    iget-object v11, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 332
    invoke-static {v10, v11}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toDBDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-wide v9, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2b

    .line 341
    sget-object v9, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 342
    const-string v9, "CALENDAR"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Insert:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "changed"

    invoke-virtual {v1, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 357
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    goto/16 :goto_0

    .line 345
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "where":Ljava/lang/String;
    sget-object v9, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v7, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    const-string v9, "CALENDAR"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Update: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->setContentView(I)V

    .line 131
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    .line 136
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDiscardButton:Landroid/widget/Button;

    .line 137
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mSaveButton:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 147
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v7, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    .line 149
    const-string v1, "date"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDateString:Ljava/lang/String;

    .line 150
    iget-wide v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    cmp-long v1, v4, v12

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mDateString:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v11

    .line 155
    .local v11, "targetCal":Ljava/util/Calendar;
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    .line 157
    .local v8, "nowCal":Ljava/util/Calendar;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 211
    .end local v8    # "nowCal":Ljava/util/Calendar;
    .end local v11    # "targetCal":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventCalendarActivity;->RESOLVER_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "gd_when_startTime"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "startTime":Ljava/lang/String;
    invoke-static {v10}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v9

    .line 180
    .local v9, "startCal":Ljava/util/Calendar;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartDateTextView:Landroid/widget/TextView;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->mStartTimeTextView:Landroid/widget/TextView;

    sget-object v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v9    # "startCal":Ljava/util/Calendar;
    .end local v10    # "startTime":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->cleanupView(Landroid/view/View;)V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    .line 242
    const/4 v0, 0x1

    .line 245
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
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    return-void
.end method

.method public s_half(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 854
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_suu:F

    .line 855
    const-string v0, "Half"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 856
    return-void
.end method

.method public sc_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 657
    const/16 v0, 0xe

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 658
    const-string v0, ">Distilled spirits Rock\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 659
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 660
    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 661
    const-string v0, "Distilled spirits Rock:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 662
    return-void
.end method

.method public sc_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 650
    const/16 v0, 0xd

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 651
    const-string v0, ">Distilled spirits Rock\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 652
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 653
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 654
    const-string v0, "Distilled spirits Rock:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 655
    return-void
.end method

.method public sc_m_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 664
    const/16 v0, 0xf

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 665
    const-string v0, ">Distilled spirits and water\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 666
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 667
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 668
    const-string v0, "Distilled spirits and water:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 669
    return-void
.end method

.method public shuturyoku(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 553
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->cleanupView(Landroid/view/View;)V

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Shuturyoku;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 556
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->finish()V

    .line 557
    return-void
.end method

.method public u_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 825
    const/16 v0, 0x26

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 826
    const-string v0, ">Plum wine rock\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 827
    const v0, 0x3fc7ae14    # 1.56f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 828
    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 829
    const-string v0, "Plum wine rock:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 830
    return-void
.end method

.method public u_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 818
    const/16 v0, 0x25

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 819
    const-string v0, ">Plum wine rock\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 820
    const v0, 0x3fc7ae14    # 1.56f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 821
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 822
    const-string v0, "Plum wine rock:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 823
    return-void
.end method

.method public u_m_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 839
    const/16 v0, 0x28

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 840
    const-string v0, ">Plum wine and water\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 841
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 842
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 843
    const-string v0, "Plum wine and water:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    return-void
.end method

.method public u_m_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 846
    const/16 v0, 0x29

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 847
    const-string v0, ">Plum wine and water\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 848
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 849
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 850
    const-string v0, "Plum wine and water:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 851
    return-void
.end method

.method public u_m_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 832
    const/16 v0, 0x27

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 833
    const-string v0, ">Plum wine and water\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 834
    const v0, 0x3edc28f6    # 0.43f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 835
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 836
    const-string v0, "Plum wine and water:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 837
    return-void
.end method

.method public w_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 741
    const/16 v0, 0x1a

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 742
    const-string v0, ">Whiskey Rock\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 743
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 744
    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 745
    const-string v0, "Whiskey Rock:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    return-void
.end method

.method public w_f_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 706
    const/16 v0, 0x15

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 707
    const-string v0, ">Wine\n\u3000\u3000\u3000\u3000Bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 708
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 709
    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 710
    const-string v0, "Wine:Bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    return-void
.end method

.method public w_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 692
    const/16 v0, 0x13

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 693
    const-string v0, ">Wine\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 694
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 695
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 696
    const-string v0, "Wine:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 697
    return-void
.end method

.method public w_h_bottle(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 699
    const/16 v0, 0x14

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 700
    const-string v0, ">Wine\n\u3000\u3000\u3000\u3000Half bottle"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 701
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 702
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 703
    const-string v0, "Wine:Half bottle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 704
    return-void
.end method

.method public w_m_350ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 762
    const/16 v0, 0x1d

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 763
    const-string v0, ">Whiskey and water\n\u3000\u3000\u3000\u3000350ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 764
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 765
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 766
    const-string v0, "Whiskey and water:350ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 767
    return-void
.end method

.method public w_m_500ml(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 769
    const/16 v0, 0x1e

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 770
    const-string v0, ">Whiskey and water\n\u3000\u3000\u3000\u3000500ml cans"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 771
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 772
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 773
    const-string v0, "Whiskey and water:500ml cans"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 774
    return-void
.end method

.method public w_m_ch_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 755
    const/16 v0, 0x1c

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 756
    const-string v0, ">Whiskey and water\n\u3000\u3000\u3000\u3000Tumbler"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 757
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 758
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 759
    const-string v0, "Whiskey and water:Tumbler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 760
    return-void
.end method

.method public w_m_glass(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 748
    const/16 v0, 0x1b

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 749
    const-string v0, ">Whiskey and water\n\u3000\u3000\u3000\u3000Glass"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 750
    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 751
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 752
    const-string v0, "Whiskey and water:Glass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 753
    return-void
.end method

.method public w_r_double(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 734
    const/16 v0, 0x19

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 735
    const-string v0, ">Whiskey Rock\n\u3000\u3000\u3000\u3000Double"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 736
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 737
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 738
    const-string v0, "Whiskey Rock:Double"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 739
    return-void
.end method

.method public w_r_single(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 727
    const/16 v0, 0x18

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->sake_shurui:I

    .line 728
    const-string v0, ">Whiskey Rock\n\u3000\u3000\u3000\u3000Single"

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink:Ljava/lang/String;

    .line 729
    const v0, 0x4017ae14    # 2.37f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_alc:F

    .line 730
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventEditorActivity;->drink_size:F

    .line 731
    const-string v0, "Whiskey Rock:Single"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    return-void
.end method
