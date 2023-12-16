.class public final Ljp/beyond/bead/Bead;
.super Ljava/lang/Object;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/bead/Bead$ContentsOrientation;,
        Ljp/beyond/bead/Bead$DialogType;
    }
.end annotation


# static fields
.field static final INTERVAL_DEFAULT:I = 0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelClickListener:Landroid/view/View$OnClickListener;

.field private mConnection:Ljp/beyond/bead/BeadConnection;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogType:Ljp/beyond/bead/Bead$DialogType;

.field private mDoneFirstSetting:Z

.field private mFinishClickListener:Landroid/view/View$OnClickListener;

.field private mInterval:I

.field private mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

.field private mRequestShowCounter:I

.field private mSid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Ljp/beyond/bead/Bead;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljp/beyond/bead/Bead$DialogType;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "dialogType"    # Ljp/beyond/bead/Bead$DialogType;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    .line 61
    sget-object v0, Ljp/beyond/bead/Bead$DialogType;->Optional:Ljp/beyond/bead/Bead$DialogType;

    iput-object v0, p0, Ljp/beyond/bead/Bead;->mDialogType:Ljp/beyond/bead/Bead$DialogType;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    .line 67
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    iput-object v0, p0, Ljp/beyond/bead/Bead;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 70
    iput-boolean v2, p0, Ljp/beyond/bead/Bead;->mDoneFirstSetting:Z

    .line 73
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    .line 76
    iput v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Ljp/beyond/bead/Bead;->mInterval:I

    .line 82
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 85
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 117
    iput-object p2, p0, Ljp/beyond/bead/Bead;->mDialogType:Ljp/beyond/bead/Bead$DialogType;

    .line 118
    iput-object p1, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/bead/Bead;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljp/beyond/bead/Bead;->retryFailedRequest()V

    return-void
.end method

.method static synthetic access$1(Ljp/beyond/bead/Bead;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->doUserCancel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Ljp/beyond/bead/Bead;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Ljp/beyond/bead/Bead;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Ljp/beyond/bead/Bead;->openUrl(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Ljp/beyond/bead/Bead;)Ljp/beyond/bead/BeadConnection;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    return-object v0
.end method

.method private createDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 336
    .local v2, "dialog":Ljp/beyond/bead/BeadDialog;
    const/4 v0, 0x0

    .line 337
    .local v0, "adBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/bead/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljp/beyond/bead/FileUtil;->loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/beyond/bead/BeadData;

    .line 339
    .local v1, "adData":Ljp/beyond/bead/BeadData;
    const/4 v4, 0x1

    .line 341
    .local v4, "isShow":Z
    if-nez v1, :cond_1

    .line 344
    const/4 v4, 0x0

    .line 356
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    iget-object v5, p0, Ljp/beyond/bead/Bead;->mDialogType:Ljp/beyond/bead/Bead$DialogType;

    sget-object v6, Ljp/beyond/bead/Bead$DialogType;->Optional:Ljp/beyond/bead/Bead$DialogType;

    if-ne v5, v6, :cond_2

    move-object v3, v2

    .line 380
    .end local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    .local v3, "dialog":Ljp/beyond/bead/BeadDialog;
    :goto_1
    return-object v3

    .line 348
    .end local v3    # "dialog":Ljp/beyond/bead/BeadDialog;
    .restart local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    :cond_1
    iget-object v5, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v5}, Ljp/beyond/bead/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljp/beyond/bead/FileUtil;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 352
    const/4 v4, 0x0

    goto :goto_0

    .line 362
    :cond_2
    iget-object v5, p0, Ljp/beyond/bead/Bead;->mDialogType:Ljp/beyond/bead/Bead$DialogType;

    sget-object v6, Ljp/beyond/bead/Bead$DialogType;->Exit:Ljp/beyond/bead/Bead$DialogType;

    if-ne v5, v6, :cond_4

    .line 364
    if-eqz v4, :cond_3

    .line 366
    new-instance v2, Ljp/beyond/bead/BeadDialog;

    .end local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Ljp/beyond/bead/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;)V

    .line 367
    .restart local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    new-instance v5, Ljp/beyond/bead/BeadExitLayout;

    invoke-direct {v5}, Ljp/beyond/bead/BeadExitLayout;-><init>()V

    invoke-virtual {v2, p1, v1, v0, v5}, Ljp/beyond/bead/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/bead/BeadData;Landroid/graphics/Bitmap;Ljp/beyond/bead/BeadLayout;)V

    :goto_2
    move-object v3, v2

    .line 380
    .end local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    .restart local v3    # "dialog":Ljp/beyond/bead/BeadDialog;
    goto :goto_1

    .line 370
    .end local v3    # "dialog":Ljp/beyond/bead/BeadDialog;
    .restart local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    :cond_3
    new-instance v2, Ljp/beyond/bead/BeadDialog;

    .end local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Ljp/beyond/bead/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;)V

    .line 371
    .restart local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    new-instance v5, Ljp/beyond/bead/BeadExitDefaultLayout;

    invoke-direct {v5}, Ljp/beyond/bead/BeadExitDefaultLayout;-><init>()V

    invoke-virtual {v2, p1, v1, v0, v5}, Ljp/beyond/bead/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/bead/BeadData;Landroid/graphics/Bitmap;Ljp/beyond/bead/BeadLayout;)V

    goto :goto_2

    .line 376
    :cond_4
    new-instance v2, Ljp/beyond/bead/BeadDialog;

    .end local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Ljp/beyond/bead/BeadDialog;-><init>(Landroid/content/Context;Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;)V

    .line 377
    .restart local v2    # "dialog":Ljp/beyond/bead/BeadDialog;
    new-instance v5, Ljp/beyond/bead/BeadOptionalLayout;

    invoke-direct {v5}, Ljp/beyond/bead/BeadOptionalLayout;-><init>()V

    invoke-virtual {v2, p1, v1, v0, v5}, Ljp/beyond/bead/BeadDialog;->applyAdLayout(Landroid/content/Context;Ljp/beyond/bead/BeadData;Landroid/graphics/Bitmap;Ljp/beyond/bead/BeadLayout;)V

    goto :goto_2
.end method

.method private createDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 425
    new-instance v0, Ljp/beyond/bead/Bead$2;

    invoke-direct {v0, p0, p1}, Ljp/beyond/bead/Bead$2;-><init>(Ljp/beyond/bead/Bead;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createExitInstance(Ljava/lang/String;)Ljp/beyond/bead/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    invoke-static {p0, v0}, Ljp/beyond/bead/Bead;->createExitInstance(Ljava/lang/String;Ljp/beyond/bead/Bead$ContentsOrientation;)Ljp/beyond/bead/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createExitInstance(Ljava/lang/String;Ljp/beyond/bead/Bead$ContentsOrientation;)Ljp/beyond/bead/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "orientation"    # Ljp/beyond/bead/Bead$ContentsOrientation;

    .prologue
    .line 137
    new-instance v0, Ljp/beyond/bead/Bead;

    sget-object v1, Ljp/beyond/bead/Bead$DialogType;->Exit:Ljp/beyond/bead/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/bead/Bead;-><init>(Ljava/lang/String;Ljp/beyond/bead/Bead$DialogType;)V

    .line 138
    .local v0, "bead":Ljp/beyond/bead/Bead;
    iput-object p1, v0, Ljp/beyond/bead/Bead;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 139
    return-object v0
.end method

.method private createMessageDialogEventListener(Landroid/app/Activity;)Ljp/beyond/bead/BeadDialog$BeadDialogEventListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 390
    new-instance v0, Ljp/beyond/bead/Bead$1;

    invoke-direct {v0, p0, p1}, Ljp/beyond/bead/Bead$1;-><init>(Ljp/beyond/bead/Bead;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createOptionalInstance(Ljava/lang/String;I)Ljp/beyond/bead/Bead;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "interval"    # I

    .prologue
    .line 149
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    invoke-static {p0, p1, v0}, Ljp/beyond/bead/Bead;->createOptionalInstance(Ljava/lang/String;ILjp/beyond/bead/Bead$ContentsOrientation;)Ljp/beyond/bead/Bead;

    move-result-object v0

    return-object v0
.end method

.method public static createOptionalInstance(Ljava/lang/String;ILjp/beyond/bead/Bead$ContentsOrientation;)Ljp/beyond/bead/Bead;
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "interval"    # I
    .param p2, "orientation"    # Ljp/beyond/bead/Bead$ContentsOrientation;

    .prologue
    .line 160
    new-instance v0, Ljp/beyond/bead/Bead;

    sget-object v1, Ljp/beyond/bead/Bead$DialogType;->Optional:Ljp/beyond/bead/Bead$DialogType;

    invoke-direct {v0, p0, v1}, Ljp/beyond/bead/Bead;-><init>(Ljava/lang/String;Ljp/beyond/bead/Bead$DialogType;)V

    .line 161
    .local v0, "bead":Ljp/beyond/bead/Bead;
    iput p1, v0, Ljp/beyond/bead/Bead;->mInterval:I

    .line 162
    iput-object p2, v0, Ljp/beyond/bead/Bead;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 163
    return-object v0
.end method

.method private doFirstSettingForRequestAd(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    iget-boolean v1, p0, Ljp/beyond/bead/Bead;->mDoneFirstSetting:Z

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->putUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "userAgent":Ljava/lang/String;
    iget-object v1, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v1}, Ljp/beyond/bead/BeadConnection;->deleteFiles()V

    .line 237
    invoke-static {p1, v0}, Ljp/beyond/bead/BeadCookieManager;->initializeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/beyond/bead/Bead;->mDoneFirstSetting:Z

    goto :goto_0
.end method

.method private doUserCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 492
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 495
    :cond_0
    return-void
.end method

.method private openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 469
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 470
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v3, "error url"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 505
    .local v1, "view":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "userAgent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 507
    invoke-static {v0}, Ljp/beyond/bead/ConnectionUtil;->setUserAgent(Ljava/lang/String;)V

    .line 508
    return-object v0
.end method

.method private retryFailedRequest()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->getRequestStatus()Ljp/beyond/bead/BeadConnection$RequestStatus;

    move-result-object v0

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->executeRequest()V

    .line 484
    :cond_0
    return-void
.end method

.method private showExitAd(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, "isShow":Z
    invoke-direct {p0}, Ljp/beyond/bead/Bead;->retryFailedRequest()V

    .line 255
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    .line 257
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    move v1, v0

    .line 266
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 262
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_0
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 264
    const/4 v0, 0x1

    move v1, v0

    .line 266
    .restart local v1    # "isShow":I
    goto :goto_0
.end method

.method private showOptionalAd(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 279
    .local v0, "isShow":Z
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/bead/BeadConnection;->getRequestStatus()Ljp/beyond/bead/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/bead/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    if-ne v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 323
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .line 285
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_1
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/bead/BeadConnection;->getRequestStatus()Ljp/beyond/bead/BeadConnection$RequestStatus;

    move-result-object v2

    sget-object v3, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    if-ne v2, v3, :cond_2

    .line 286
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v2}, Ljp/beyond/bead/BeadConnection;->executeRequest()V

    move v1, v0

    .line 287
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 291
    .end local v1    # "isShow":I
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljp/beyond/bead/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    .line 293
    iget v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    .line 295
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/bead/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 298
    iget v2, p0, Ljp/beyond/bead/Bead;->mInterval:I

    if-gtz v2, :cond_3

    .line 299
    const/4 v2, 0x1

    iput v2, p0, Ljp/beyond/bead/Bead;->mInterval:I

    .line 303
    :cond_3
    iget v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    iget v3, p0, Ljp/beyond/bead/Bead;->mInterval:I

    if-ge v2, v3, :cond_4

    move v1, v0

    .line 304
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 308
    .end local v1    # "isShow":I
    :cond_4
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    .line 310
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_5

    move v1, v0

    .line 311
    .restart local v1    # "isShow":I
    goto :goto_0

    .line 315
    .end local v1    # "isShow":I
    :cond_5
    iget-object v2, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 317
    const/4 v2, 0x0

    iput v2, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    .line 319
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    iget v4, p0, Ljp/beyond/bead/Bead;->mRequestShowCounter:I

    invoke-static {v2, v3, v4}, Ljp/beyond/bead/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 321
    const/4 v0, 0x1

    move v1, v0

    .line 323
    .restart local v1    # "isShow":I
    goto :goto_0
.end method


# virtual methods
.method public endAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->deleteFiles()V

    .line 206
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 209
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mDialog:Landroid/app/Dialog;

    .line 213
    :cond_1
    iput-object v1, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    .line 216
    invoke-static {}, Ljp/beyond/bead/BeadCookieManager;->finalizeCookie()V

    .line 218
    sget-object v0, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method getContentsOrientation()Ljp/beyond/bead/Bead$ContentsOrientation;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    return-object v0
.end method

.method public requestAd(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    new-instance v0, Ljp/beyond/bead/BeadConnection;

    iget-object v1, p0, Ljp/beyond/bead/Bead;->mSid:Ljava/lang/String;

    iget-object v2, p0, Ljp/beyond/bead/Bead;->mOrientation:Ljp/beyond/bead/Bead$ContentsOrientation;

    invoke-direct {v0, p1, v1, v2}, Ljp/beyond/bead/BeadConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/bead/Bead$ContentsOrientation;)V

    iput-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    .line 175
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->doFirstSettingForRequestAd(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mConnection:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->executeRequest()V

    .line 179
    return-void
.end method

.method public setOnCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "cancelClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 108
    iput-object p1, p0, Ljp/beyond/bead/Bead;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 109
    return-void
.end method

.method public setOnFinishClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "finishClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 100
    iput-object p1, p0, Ljp/beyond/bead/Bead;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 101
    return-void
.end method

.method public showAd(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    iget-object v0, p0, Ljp/beyond/bead/Bead;->mDialogType:Ljp/beyond/bead/Bead$DialogType;

    sget-object v1, Ljp/beyond/bead/Bead$DialogType;->Exit:Ljp/beyond/bead/Bead$DialogType;

    if-ne v0, v1, :cond_0

    .line 189
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->showExitAd(Landroid/app/Activity;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljp/beyond/bead/Bead;->showOptionalAd(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method
