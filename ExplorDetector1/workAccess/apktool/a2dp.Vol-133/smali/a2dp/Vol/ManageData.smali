.class public La2dp/Vol/ManageData;
.super Landroid/app/Activity;
.source "ManageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/ManageData$ExportLocationTask;,
        La2dp/Vol/ManageData$ImportDatabaseFileTask;,
        La2dp/Vol/ManageData$SelectDataTask;,
        La2dp/Vol/ManageData$ExportDataAsXmlTask;,
        La2dp/Vol/ManageData$ExportDatabaseFileTask;
    }
.end annotation


# instance fields
.field a2dpDir:Ljava/lang/String;

.field private application:La2dp/Vol/MyApplication;

.field private exportDbToSdButton:Landroid/widget/Button;

.field private exportDbXmlToSdButton:Landroid/widget/Button;

.field private exportLoc:Landroid/widget/Button;

.field private importDB:Landroid/widget/Button;

.field private output:Landroid/widget/TextView;

.field private path:Landroid/widget/TextView;

.field private pathstr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    move-object v0, v1

    .line 55
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La2dp/Vol/ManageData;->output:Landroid/widget/TextView;

    .line 56
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/ManageData;->path:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(La2dp/Vol/ManageData;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/ManageData;

    .prologue
    .line 26
    invoke-direct {p0}, La2dp/Vol/ManageData;->isExternalStorageAvail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(La2dp/Vol/ManageData;)La2dp/Vol/MyApplication;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/ManageData;

    .prologue
    .line 26
    iget-object v0, p0, La2dp/Vol/ManageData;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method

.method static synthetic access$700(La2dp/Vol/ManageData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/ManageData;

    .prologue
    .line 26
    iget-object v0, p0, La2dp/Vol/ManageData;->pathstr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(La2dp/Vol/ManageData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/ManageData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, La2dp/Vol/ManageData;->pathstr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(La2dp/Vol/ManageData;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/ManageData;

    .prologue
    .line 26
    iget-object v0, p0, La2dp/Vol/ManageData;->path:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(La2dp/Vol/ManageData;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/ManageData;

    .prologue
    .line 26
    iget-object v0, p0, La2dp/Vol/ManageData;->output:Landroid/widget/TextView;

    return-object v0
.end method

.method private isExternalStorageAvail()Z
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, La2dp/Vol/ManageData;->setResult(ILandroid/content/Intent;)V

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, La2dp/Vol/ManageData;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, La2dp/Vol/MyApplication;

    iput-object v0, p0, La2dp/Vol/ManageData;->application:La2dp/Vol/MyApplication;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/A2DPVol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/ManageData;->a2dpDir:Ljava/lang/String;

    .line 66
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->setContentView(I)V

    .line 68
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La2dp/Vol/ManageData;->output:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La2dp/Vol/ManageData;->path:Landroid/widget/TextView;

    .line 71
    new-instance v0, La2dp/Vol/ManageData$SelectDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La2dp/Vol/ManageData$SelectDataTask;-><init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/ManageData$SelectDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    const v0, 0x7f0a0044

    .line 74
    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/ManageData;->exportDbToSdButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, La2dp/Vol/ManageData;->exportDbToSdButton:Landroid/widget/Button;

    new-instance v1, La2dp/Vol/ManageData$1;

    invoke-direct {v1, p0}, La2dp/Vol/ManageData$1;-><init>(La2dp/Vol/ManageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0a0045

    .line 90
    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/ManageData;->exportDbXmlToSdButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, La2dp/Vol/ManageData;->exportDbXmlToSdButton:Landroid/widget/Button;

    new-instance v1, La2dp/Vol/ManageData$2;

    invoke-direct {v1, p0}, La2dp/Vol/ManageData$2;-><init>(La2dp/Vol/ManageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/ManageData;->importDB:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, La2dp/Vol/ManageData;->importDB:Landroid/widget/Button;

    new-instance v1, La2dp/Vol/ManageData$3;

    invoke-direct {v1, p0}, La2dp/Vol/ManageData$3;-><init>(La2dp/Vol/ManageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, La2dp/Vol/ManageData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La2dp/Vol/ManageData;->exportLoc:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, La2dp/Vol/ManageData;->exportLoc:Landroid/widget/Button;

    new-instance v1, La2dp/Vol/ManageData$4;

    invoke-direct {v1, p0}, La2dp/Vol/ManageData$4;-><init>(La2dp/Vol/ManageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, La2dp/Vol/ManageData;->setResult(ILandroid/content/Intent;)V

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
