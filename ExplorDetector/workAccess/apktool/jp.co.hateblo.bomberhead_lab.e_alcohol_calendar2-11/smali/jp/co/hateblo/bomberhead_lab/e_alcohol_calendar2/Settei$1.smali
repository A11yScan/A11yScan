.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;
.super Ljava/lang/Object;
.source "Settei.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->tuika(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x4017ae14    # 2.37f

    const v6, 0x3ed70a3d    # 0.42f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43480000    # 200.0f

    .line 130
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v1, v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->suu_b_dai_jokki:F

    .line 132
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->suu_b_dai_jokki:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$0(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 133
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 134
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x441d8000    # 630.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 136
    :cond_0
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$1(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 138
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 139
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 141
    :cond_1
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$2(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 143
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 144
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43a50000    # 330.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 146
    :cond_2
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$3(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 148
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 149
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 151
    :cond_3
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 152
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$4(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 153
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 154
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 156
    :cond_4
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 157
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$5(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 158
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v6, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 159
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 161
    :cond_5
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 162
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$6(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 163
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 164
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x441d8000    # 630.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 166
    :cond_6
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 167
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$7(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 168
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 169
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 171
    :cond_7
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 172
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$8(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 173
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 174
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43a50000    # 330.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 176
    :cond_8
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 177
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$9(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 178
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 179
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 181
    :cond_9
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 182
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$10(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 183
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 184
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 186
    :cond_a
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 187
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$11(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 188
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v5, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 189
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 191
    :cond_b
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 192
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$12(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 193
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3fd9999a    # 1.7f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 194
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 196
    :cond_c
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_d

    .line 197
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$13(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 198
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3fd9999a    # 1.7f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 199
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44340000    # 720.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 201
    :cond_d
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_e

    .line 202
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$14(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 203
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 204
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 206
    :cond_e
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 207
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$15(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 208
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 209
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43960000    # 300.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 211
    :cond_f
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_10

    .line 212
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$16(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 213
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 214
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 216
    :cond_10
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_11

    .line 217
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$17(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 218
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 219
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 221
    :cond_11
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_12

    .line 222
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$18(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 223
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 224
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43160000    # 150.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 226
    :cond_12
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_13

    .line 227
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$19(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 228
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 229
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 231
    :cond_13
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    .line 232
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$20(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 233
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 234
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44340000    # 720.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 236
    :cond_14
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_15

    .line 237
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$21(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 238
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3f866666    # 1.05f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 239
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43340000    # 180.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 241
    :cond_15
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_16

    .line 242
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$22(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 243
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3f866666    # 1.05f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 244
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44e10000    # 1800.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 246
    :cond_16
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_17

    .line 247
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$23(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 248
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 249
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 251
    :cond_17
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_18

    .line 252
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$24(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 253
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 254
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 256
    :cond_18
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_19

    .line 257
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$25(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 258
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 259
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44340000    # 720.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 261
    :cond_19
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1a

    .line 262
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$26(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 263
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 264
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 266
    :cond_1a
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1b

    .line 267
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$27(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 268
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 269
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43960000    # 300.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 271
    :cond_1b
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1c

    .line 272
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$28(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 273
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 274
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 276
    :cond_1c
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1d

    .line 277
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$29(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 278
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 279
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 281
    :cond_1d
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1e

    .line 282
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$30(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 283
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 284
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 286
    :cond_1e
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1f

    .line 287
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$31(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 288
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 289
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 291
    :cond_1f
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_20

    .line 292
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$32(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 293
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v7, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 294
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44340000    # 720.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 296
    :cond_20
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_21

    .line 297
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$33(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 298
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3ed1eb85    # 0.41f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 299
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 301
    :cond_21
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_22

    .line 302
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$34(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 303
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3ed1eb85    # 0.41f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 304
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 306
    :cond_22
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_23

    .line 307
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$35(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 308
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3ed1eb85    # 0.41f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 309
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 311
    :cond_23
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_24

    .line 312
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$36(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 313
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3fc7ae14    # 1.56f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 314
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 316
    :cond_24
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_25

    .line 317
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$37(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 318
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3fc7ae14    # 1.56f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 319
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x44340000    # 720.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 321
    :cond_25
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_26

    .line 322
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$38(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 323
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3edc28f6    # 0.43f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 324
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v3, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 326
    :cond_26
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_27

    .line 327
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$39(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 328
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3edc28f6    # 0.43f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 329
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 331
    :cond_27
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v0, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->sake_shurui:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_28

    .line 332
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$40(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 333
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const v1, 0x3edc28f6    # 0.43f

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    .line 334
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iput v4, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    .line 336
    :cond_28
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->start_alc_calory:F

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_alc:F

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v3, v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_size:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v3, v3, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->drink_suu:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->start_alc_calory:F

    .line 337
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    const-string v1, "pref"

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    iget v2, v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->start_alc_calory:F

    invoke-static {v0, v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;->access$41(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;Ljava/lang/String;F)V

    .line 338
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 339
    return-void
.end method
