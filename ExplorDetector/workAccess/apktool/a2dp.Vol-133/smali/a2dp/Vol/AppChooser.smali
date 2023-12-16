.class public La2dp/Vol/AppChooser;
.super Landroid/app/Activity;
.source "AppChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/AppChooser$AppInfoCache;,
        La2dp/Vol/AppChooser$AlphaComparator;,
        La2dp/Vol/AppChooser$PackageListAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La2dp/Vol/AppChooser$AppInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnClear:Landroid/widget/Button;

.field private mBtnSearch:Landroid/widget/Button;

.field public mClearBtnListenerListner:Landroid/view/View$OnClickListener;

.field private mEtFilter:Landroid/widget/EditText;

.field private mFilterText:Ljava/lang/String;

.field private mFinishLoadAndSortTask:Ljava/lang/Runnable;

.field private mFullAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La2dp/Vol/AppChooser$AppInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mListAdapter:La2dp/Vol/AppChooser$PackageListAdapter;

.field public mListItemClickAdapter:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field public mSearchActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field public mSearchBoxKeyListener:Landroid/view/View$OnKeyListener;

.field public mSearchBtnListenerListner:Landroid/view/View$OnClickListener;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, La2dp/Vol/AppChooser$1;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$1;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mSearchBtnListenerListner:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, La2dp/Vol/AppChooser$2;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$2;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mClearBtnListenerListner:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v0, La2dp/Vol/AppChooser$3;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$3;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mSearchActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 72
    new-instance v0, La2dp/Vol/AppChooser$4;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$4;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mSearchBoxKeyListener:Landroid/view/View$OnKeyListener;

    .line 107
    new-instance v0, La2dp/Vol/AppChooser$5;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$5;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mListItemClickAdapter:Landroid/widget/AdapterView$OnItemClickListener;

    .line 171
    new-instance v0, La2dp/Vol/AppChooser$6;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$6;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

    .line 195
    new-instance v0, La2dp/Vol/AppChooser$7;

    invoke-direct {v0, p0}, La2dp/Vol/AppChooser$7;-><init>(La2dp/Vol/AppChooser;)V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mFinishLoadAndSortTask:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, La2dp/Vol/AppChooser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(La2dp/Vol/AppChooser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(La2dp/Vol/AppChooser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(La2dp/Vol/AppChooser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/AppChooser;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    iput-object p1, p0, La2dp/Vol/AppChooser;->mAppList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(La2dp/Vol/AppChooser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(La2dp/Vol/AppChooser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mFullAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(La2dp/Vol/AppChooser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/AppChooser;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    iput-object p1, p0, La2dp/Vol/AppChooser;->mFullAppList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(La2dp/Vol/AppChooser;La2dp/Vol/AppChooser$PackageListAdapter;)La2dp/Vol/AppChooser$PackageListAdapter;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/AppChooser;
    .param p1, "x1"    # La2dp/Vol/AppChooser$PackageListAdapter;

    .prologue
    .line 32
    iput-object p1, p0, La2dp/Vol/AppChooser;->mListAdapter:La2dp/Vol/AppChooser$PackageListAdapter;

    return-object p1
.end method

.method static synthetic access$500(La2dp/Vol/AppChooser;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mFinishLoadAndSortTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(La2dp/Vol/AppChooser;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(La2dp/Vol/AppChooser;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    invoke-direct {p0}, La2dp/Vol/AppChooser;->initAssignListenersAndAdapter()V

    return-void
.end method

.method static synthetic access$800(La2dp/Vol/AppChooser;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initAssignListenersAndAdapter()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mSearchActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 163
    iget-object v0, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mSearchBoxKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 164
    iget-object v0, p0, La2dp/Vol/AppChooser;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mListAdapter:La2dp/Vol/AppChooser$PackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, La2dp/Vol/AppChooser;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mListItemClickAdapter:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget-object v0, p0, La2dp/Vol/AppChooser;->mBtnSearch:Landroid/widget/Button;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mSearchBtnListenerListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, La2dp/Vol/AppChooser;->mBtnClear:Landroid/widget/Button;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mClearBtnListenerListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private initAttachViewsToVars()V
    .locals 1

    .prologue
    .line 154
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, La2dp/Vol/AppChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, La2dp/Vol/AppChooser;->mListView:Landroid/widget/ListView;

    .line 155
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, La2dp/Vol/AppChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    .line 156
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, La2dp/Vol/AppChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/AppChooser;->mBtnSearch:Landroid/widget/Button;

    .line 157
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, La2dp/Vol/AppChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/AppChooser;->mBtnClear:Landroid/widget/Button;

    .line 158
    return-void
.end method


# virtual methods
.method public doListFilter()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, La2dp/Vol/AppChooser;->mEtFilter:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/AppChooser;->mFilterText:Ljava/lang/String;

    .line 90
    iget-object v1, p0, La2dp/Vol/AppChooser;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 91
    iget-object v1, p0, La2dp/Vol/AppChooser;->mFilterText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, La2dp/Vol/AppChooser;->mFullAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/AppChooser$AppInfoCache;

    .line 93
    .local v0, "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    iget-object v2, p0, La2dp/Vol/AppChooser;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    :cond_0
    iget-object v1, p0, La2dp/Vol/AppChooser;->mFullAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/AppChooser$AppInfoCache;

    .line 97
    .restart local v0    # "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    invoke-virtual {v0}, La2dp/Vol/AppChooser$AppInfoCache;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La2dp/Vol/AppChooser;->mFilterText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, La2dp/Vol/AppChooser;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v0    # "appInfo":La2dp/Vol/AppChooser$AppInfoCache;
    :cond_2
    iget-object v1, p0, La2dp/Vol/AppChooser;->mListAdapter:La2dp/Vol/AppChooser$PackageListAdapter;

    invoke-virtual {v1}, La2dp/Vol/AppChooser$PackageListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, La2dp/Vol/AppChooser;->setContentView(I)V

    .line 147
    invoke-direct {p0}, La2dp/Vol/AppChooser;->initAttachViewsToVars()V

    .line 149
    invoke-direct {p0}, La2dp/Vol/AppChooser;->initAssignListenersAndAdapter()V

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, La2dp/Vol/AppChooser;->setContentView(I)V

    .line 125
    const-string v1, "Select an app..."

    invoke-virtual {p0, v1}, La2dp/Vol/AppChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, La2dp/Vol/AppChooser;->initAttachViewsToVars()V

    .line 130
    invoke-virtual {p0}, La2dp/Vol/AppChooser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/AppChooser;->pm:Landroid/content/pm/PackageManager;

    .line 131
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 132
    iget-object v1, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 133
    iget-object v1, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    const-string v2, "Loading App List..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 135
    iget-object v1, p0, La2dp/Vol/AppChooser;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 137
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, La2dp/Vol/AppChooser;->mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 291
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 297
    return-void
.end method
