.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;
.super Ljava/lang/Object;
.source "Start.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->yes(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->cleanupView(Landroid/view/View;)V

    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    const-class v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Tuuka;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    invoke-virtual {v1, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start$1;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    invoke-virtual {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;->finish()V

    .line 54
    return-void
.end method
