.class public La2dp/Vol/PackagesChooser;
.super Landroid/app/Activity;
.source "PackagesChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/PackagesChooser$AlphaComparator;,
        La2dp/Vol/PackagesChooser$AppInfoCache;,
        La2dp/Vol/PackagesChooser$PackageListAdapter;
    }
.end annotation


# instance fields
.field private application:La2dp/Vol/MyApplication;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La2dp/Vol/PackagesChooser$AppInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishLoadAndSortTask:Ljava/lang/Runnable;

.field private mFullAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La2dp/Vol/PackagesChooser$AppInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mListAdapter:La2dp/Vol/PackagesChooser$PackageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

.field packagelist:Ljava/lang/String;

.field private packages:[Ljava/lang/String;

.field private pb:Landroid/widget/ProgressBar;

.field private pm:Landroid/content/pm/PackageManager;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, La2dp/Vol/PackagesChooser$1;

    invoke-direct {v0, p0}, La2dp/Vol/PackagesChooser$1;-><init>(La2dp/Vol/PackagesChooser;)V

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

    .line 176
    new-instance v0, La2dp/Vol/PackagesChooser$2;

    invoke-direct {v0, p0}, La2dp/Vol/PackagesChooser$2;-><init>(La2dp/Vol/PackagesChooser;)V

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->mFinishLoadAndSortTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(La2dp/Vol/PackagesChooser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(La2dp/Vol/PackagesChooser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, La2dp/Vol/PackagesChooser;->mAppList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(La2dp/Vol/PackagesChooser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(La2dp/Vol/PackagesChooser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->mFullAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(La2dp/Vol/PackagesChooser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    iput-object p1, p0, La2dp/Vol/PackagesChooser;->mFullAppList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(La2dp/Vol/PackagesChooser;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->packages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(La2dp/Vol/PackagesChooser;La2dp/Vol/PackagesChooser$PackageListAdapter;)La2dp/Vol/PackagesChooser$PackageListAdapter;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;
    .param p1, "x1"    # La2dp/Vol/PackagesChooser$PackageListAdapter;

    .prologue
    .line 36
    iput-object p1, p0, La2dp/Vol/PackagesChooser;->mListAdapter:La2dp/Vol/PackagesChooser$PackageListAdapter;

    return-object p1
.end method

.method static synthetic access$500(La2dp/Vol/PackagesChooser;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->mFinishLoadAndSortTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(La2dp/Vol/PackagesChooser;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(La2dp/Vol/PackagesChooser;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    invoke-direct {p0}, La2dp/Vol/PackagesChooser;->initAssignListenersAndAdapter()V

    return-void
.end method

.method static synthetic access$800(La2dp/Vol/PackagesChooser;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 36
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private cleanup()V
    .locals 7

    .prologue
    .line 254
    const-string v4, ""

    iput-object v4, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "i":I
    iget-object v4, p0, La2dp/Vol/PackagesChooser;->mFullAppList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 257
    iget-object v4, p0, La2dp/Vol/PackagesChooser;->mFullAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 258
    iget-object v4, p0, La2dp/Vol/PackagesChooser;->mFullAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2dp/Vol/PackagesChooser$AppInfoCache;

    .line 259
    .local v2, "info":La2dp/Vol/PackagesChooser$AppInfoCache;
    invoke-virtual {v2}, La2dp/Vol/PackagesChooser$AppInfoCache;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    if-lez v1, :cond_0

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    .line 263
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, La2dp/Vol/PackagesChooser$AppInfoCache;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto :goto_0

    .line 269
    .end local v2    # "info":La2dp/Vol/PackagesChooser$AppInfoCache;
    :cond_2
    const-string v4, ""

    iput-object v4, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    .line 275
    :cond_3
    :goto_1
    iget-object v4, p0, La2dp/Vol/PackagesChooser;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "packages"

    iget-object v5, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "a2dp.vol.Reload"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v4, p0, La2dp/Vol/PackagesChooser;->application:La2dp/Vol/MyApplication;

    invoke-virtual {v4, v3}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    return-void

    .line 272
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v4, ""

    iput-object v4, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    goto :goto_1
.end method

.method private initAssignListenersAndAdapter()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, La2dp/Vol/PackagesChooser;->mListAdapter:La2dp/Vol/PackagesChooser$PackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, La2dp/Vol/PackagesChooser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, La2dp/Vol/PackagesChooser;->cleanup()V

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, La2dp/Vol/PackagesChooser;->setContentView(I)V

    .line 55
    invoke-direct {p0}, La2dp/Vol/PackagesChooser;->setupActionBar()V

    .line 57
    invoke-virtual {p0}, La2dp/Vol/PackagesChooser;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, La2dp/Vol/MyApplication;

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->application:La2dp/Vol/MyApplication;

    .line 58
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->application:La2dp/Vol/MyApplication;

    .line 59
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->preferences:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "packages"

    const-string v2, "com.google.android.talk,com.android.email,com.android.calendar"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    .line 61
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->packagelist:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->packages:[Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, La2dp/Vol/PackagesChooser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->pm:Landroid/content/pm/PackageManager;

    .line 63
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, La2dp/Vol/PackagesChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, La2dp/Vol/PackagesChooser;->pb:Landroid/widget/ProgressBar;

    .line 64
    iget-object v0, p0, La2dp/Vol/PackagesChooser;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    invoke-virtual {p0}, La2dp/Vol/PackagesChooser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, La2dp/Vol/PackagesChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, La2dp/Vol/PackagesChooser;->mListView:Landroid/widget/ListView;

    .line 80
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, La2dp/Vol/PackagesChooser;->mLoadAppLoadAndSortAppList:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 97
    :pswitch_0
    invoke-direct {p0}, La2dp/Vol/PackagesChooser;->cleanup()V

    .line 99
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
