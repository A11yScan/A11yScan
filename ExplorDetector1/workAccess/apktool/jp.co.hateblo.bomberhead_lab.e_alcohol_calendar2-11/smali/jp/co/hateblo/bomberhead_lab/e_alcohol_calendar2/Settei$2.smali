.class Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$2;
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
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei$2;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/Settei;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 344
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 345
    return-void
.end method
