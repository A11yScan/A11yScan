.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;
.super Ljava/lang/Object;
.source "SplushActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "splashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;


# direct methods
.method constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 38
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    const-string v3, "pref"

    iget-object v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    iget v4, v4, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->hyouji:I

    invoke-virtual {v2, v3, v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->load_hyouji(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->hyouji:I

    .line 40
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->cleanupView(Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    iget v1, v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->hyouji:I

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-virtual {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Start;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-virtual {v1, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    :goto_0
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-virtual {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->finish()V

    .line 56
    return-void

    .line 46
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-virtual {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Konomama;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity$splashHandler;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;

    invoke-virtual {v1, v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/SplushActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
