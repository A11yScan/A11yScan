.class La2dp/Vol/ManageData$SelectDataTask;
.super Landroid/os/AsyncTask;
.source "ManageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/ManageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:La2dp/Vol/ManageData;


# direct methods
.method private constructor <init>(La2dp/Vol/ManageData;)V
    .locals 2

    .prologue
    .line 268
    iput-object p1, p0, La2dp/Vol/ManageData$SelectDataTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 269
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, La2dp/Vol/ManageData$SelectDataTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V
    .locals 0
    .param p1, "x0"    # La2dp/Vol/ManageData;
    .param p2, "x1"    # La2dp/Vol/ManageData$1;

    .prologue
    .line 268
    invoke-direct {p0, p1}, La2dp/Vol/ManageData$SelectDataTask;-><init>(La2dp/Vol/ManageData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$SelectDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 280
    iget-object v3, p0, La2dp/Vol/ManageData$SelectDataTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v3}, La2dp/Vol/ManageData;->access$600(La2dp/Vol/ManageData;)La2dp/Vol/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, La2dp/Vol/MyApplication;->getDeviceDB()La2dp/Vol/DeviceDB;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, La2dp/Vol/DeviceDB;->selectAll()Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    .local v0, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$SelectDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    :cond_0
    iget-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v0}, La2dp/Vol/ManageData;->access$900(La2dp/Vol/ManageData;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Selecting data..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, La2dp/Vol/ManageData$SelectDataTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 276
    return-void
.end method
