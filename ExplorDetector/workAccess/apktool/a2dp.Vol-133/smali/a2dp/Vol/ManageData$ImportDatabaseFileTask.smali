.class La2dp/Vol/ManageData$ImportDatabaseFileTask;
.super Landroid/os/AsyncTask;
.source "ManageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/ManageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportDatabaseFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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
    .line 300
    iput-object p1, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 302
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V
    .locals 0
    .param p1, "x0"    # La2dp/Vol/ManageData;
    .param p2, "x1"    # La2dp/Vol/ManageData$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, La2dp/Vol/ManageData$ImportDatabaseFileTask;-><init>(La2dp/Vol/ManageData;)V

    return-void
.end method


# virtual methods
.method copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 366
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 368
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 372
    :cond_0
    if-eqz v6, :cond_1

    .line 373
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 375
    :cond_1
    return-void

    .line 370
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 372
    :cond_2
    if-eqz v6, :cond_3

    .line 373
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    throw v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v4}, La2dp/Vol/ManageData;->access$600(La2dp/Vol/ManageData;)La2dp/Vol/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, La2dp/Vol/MyApplication;->getDeviceDB()La2dp/Vol/DeviceDB;

    move-result-object v4

    invoke-virtual {v4}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "dbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    iget-object v4, v4, La2dp/Vol/ManageData;->a2dpDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "exportDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v3, "file":Ljava/io/File;
    iget-object v4, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La2dp/Vol/ManageData;->access$702(La2dp/Vol/ManageData;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 329
    invoke-virtual {p0, v3, v0}, La2dp/Vol/ManageData$ImportDatabaseFileTask;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 330
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 333
    :goto_0
    return-object v4

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "A2DP Volume"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$ImportDatabaseFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 339
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 342
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v2}, La2dp/Vol/ManageData;->access$800(La2dp/Vol/ManageData;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Imported from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v4}, La2dp/Vol/ManageData;->access$700(La2dp/Vol/ManageData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "a2dp.vol.Main.RELOAD_LIST"

    .line 350
    .local v0, "Ireload":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v1, "itent":Landroid/content/Intent;
    const-string v2, "a2dp.vol.Main.RELOAD_LIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v2, "device"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v2}, La2dp/Vol/ManageData;->access$600(La2dp/Vol/ManageData;)La2dp/Vol/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    const v3, 0x7f07000e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 362
    .end local v0    # "Ireload":Ljava/lang/String;
    .end local v1    # "itent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    const-string v3, "Import failed"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 360
    iget-object v2, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v2}, La2dp/Vol/ManageData;->access$800(La2dp/Vol/ManageData;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Import Failed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$ImportDatabaseFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Importing database..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, La2dp/Vol/ManageData$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 311
    return-void
.end method
