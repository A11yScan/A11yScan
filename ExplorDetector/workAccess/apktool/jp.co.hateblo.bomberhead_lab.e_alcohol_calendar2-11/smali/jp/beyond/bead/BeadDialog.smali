.class Ljp/beyond/bead/BeadDialog;
.super Landroid/app/Dialog;
.source "BeadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_APP:Ljava/lang/String; = "APP"


# instance fields
.field private mEventListener:Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/beyond/bead/BeadDialog;->mEventListener:Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    .line 56
    iput-object p2, p0, Ljp/beyond/bead/BeadDialog;->mEventListener:Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/beyond/bead/BeadDialog;->requestWindowFeature(I)Z

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/beyond/bead/BeadDialog;->setCancelable(Z)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/bead/BeadDialog;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljp/beyond/bead/BeadDialog;->mEventListener:Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    return-object v0
.end method

.method private isAppActionType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "APP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setCancelButtonClickListener()V
    .locals 2

    .prologue
    .line 105
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljp/beyond/bead/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v1, Ljp/beyond/bead/BeadDialog$1;

    invoke-direct {v1, p0}, Ljp/beyond/bead/BeadDialog$1;-><init>(Ljp/beyond/bead/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setDownloadButtonClickListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljp/beyond/bead/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v1, Ljp/beyond/bead/BeadDialog$2;

    invoke-direct {v1, p0, p1}, Ljp/beyond/bead/BeadDialog$2;-><init>(Ljp/beyond/bead/BeadDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setFinishButtonClickListener()V
    .locals 2

    .prologue
    .line 154
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljp/beyond/bead/BeadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 156
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v1, Ljp/beyond/bead/BeadDialog$3;

    invoke-direct {v1, p0}, Ljp/beyond/bead/BeadDialog$3;-><init>(Ljp/beyond/bead/BeadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public applyAdLayout(Landroid/content/Context;Ljp/beyond/bead/BeadData;Landroid/graphics/Bitmap;Ljp/beyond/bead/BeadLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adData"    # Ljp/beyond/bead/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "layout"    # Ljp/beyond/bead/BeadLayout;

    .prologue
    .line 71
    const/4 v0, 0x1

    .line 72
    .local v0, "isApp":Z
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2}, Ljp/beyond/bead/BeadData;->getActionType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/beyond/bead/BeadDialog;->isAppActionType(Ljava/lang/String;)Z

    move-result v0

    .line 77
    :cond_0
    invoke-virtual {p4, p1, p3, v0}, Ljp/beyond/bead/BeadLayout;->createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp/beyond/bead/BeadDialog;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Ljp/beyond/bead/BeadDialog;->setCancelButtonClickListener()V

    .line 83
    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2}, Ljp/beyond/bead/BeadData;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp/beyond/bead/BeadDialog;->setDownloadButtonClickListener(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-direct {p0}, Ljp/beyond/bead/BeadDialog;->setFinishButtonClickListener()V

    .line 89
    return-void
.end method
