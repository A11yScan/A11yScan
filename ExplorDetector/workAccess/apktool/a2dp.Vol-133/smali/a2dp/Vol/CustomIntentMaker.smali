.class public La2dp/Vol/CustomIntentMaker;
.super Landroid/app/Activity;
.source "CustomIntentMaker.java"


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnCancelOnClick:Landroid/view/View$OnClickListener;

.field private mBtnOk:Landroid/widget/Button;

.field private mBtnOkOnClick:Landroid/view/View$OnClickListener;

.field private mBtnTest:Landroid/widget/Button;

.field private mBtnTestOnClick:Landroid/view/View$OnClickListener;

.field private mEtAction:Landroid/widget/EditText;

.field private mEtData:Landroid/widget/EditText;

.field private mEtType:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, La2dp/Vol/CustomIntentMaker$1;

    invoke-direct {v0, p0}, La2dp/Vol/CustomIntentMaker$1;-><init>(La2dp/Vol/CustomIntentMaker;)V

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnOkOnClick:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, La2dp/Vol/CustomIntentMaker$2;

    invoke-direct {v0, p0}, La2dp/Vol/CustomIntentMaker$2;-><init>(La2dp/Vol/CustomIntentMaker;)V

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnCancelOnClick:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, La2dp/Vol/CustomIntentMaker$3;

    invoke-direct {v0, p0}, La2dp/Vol/CustomIntentMaker$3;-><init>(La2dp/Vol/CustomIntentMaker;)V

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnTestOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 14
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtAction:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 14
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtData:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 14
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtType:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(La2dp/Vol/CustomIntentMaker;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 14
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnOk:Landroid/widget/Button;

    return-object v0
.end method

.method private assignListeners()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnOk:Landroid/widget/Button;

    iget-object v1, p0, La2dp/Vol/CustomIntentMaker;->mBtnOkOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, La2dp/Vol/CustomIntentMaker;->mBtnCancelOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnTest:Landroid/widget/Button;

    iget-object v1, p0, La2dp/Vol/CustomIntentMaker;->mBtnTestOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtAction:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtData:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mEtType:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnOk:Landroid/widget/Button;

    .line 41
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnCancel:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnTest:Landroid/widget/Button;

    .line 43
    return-void
.end method

.method public static isShortcutIntent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "lcase":Ljava/lang/String;
    const-string v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->setContentView(I)V

    .line 24
    const-string v0, "Custom Intent..."

    invoke-virtual {p0, v0}, La2dp/Vol/CustomIntentMaker;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-direct {p0}, La2dp/Vol/CustomIntentMaker;->initViews()V

    .line 27
    invoke-direct {p0}, La2dp/Vol/CustomIntentMaker;->assignListeners()V

    .line 29
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    return-void
.end method
