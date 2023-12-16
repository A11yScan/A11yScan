.class La2dp/Vol/ManageData$ExportDataAsXmlTask;
.super Landroid/os/AsyncTask;
.source "ManageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/ManageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportDataAsXmlTask"
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
    .line 225
    iput-object p1, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V
    .locals 0
    .param p1, "x0"    # La2dp/Vol/ManageData;
    .param p2, "x1"    # La2dp/Vol/ManageData$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, La2dp/Vol/ManageData$ExportDataAsXmlTask;-><init>(La2dp/Vol/ManageData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$ExportDataAsXmlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 237
    new-instance v1, La2dp/Vol/DataXmlExporter;

    iget-object v4, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    .line 238
    invoke-static {v4}, La2dp/Vol/ManageData;->access$600(La2dp/Vol/ManageData;)La2dp/Vol/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, La2dp/Vol/MyApplication;->getDeviceDB()La2dp/Vol/DeviceDB;

    move-result-object v4

    invoke-virtual {v4}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-direct {v1, v4}, La2dp/Vol/DataXmlExporter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    .local v1, "dm":La2dp/Vol/DataXmlExporter;
    const/4 v4, 0x0

    :try_start_0
    aget-object v0, p1, v4

    .line 241
    .local v0, "dbName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 242
    .local v3, "exportFileName":Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, La2dp/Vol/DataXmlExporter;->export(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    iget-object v6, v6, La2dp/Vol/ManageData;->a2dpDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La2dp/Vol/ManageData;->access$702(La2dp/Vol/ManageData;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v4, 0x0

    .end local v0    # "dbName":Ljava/lang/String;
    .end local v3    # "exportFileName":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "A2DP Volume"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La2dp/Vol/ManageData$ExportDataAsXmlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    :cond_0
    if-nez p1, :cond_1

    .line 257
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    const-string v1, "Export successful!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v0}, La2dp/Vol/ManageData;->access$800(La2dp/Vol/ManageData;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exported to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v2}, La2dp/Vol/ManageData;->access$700(La2dp/Vol/ManageData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Export failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->this$0:La2dp/Vol/ManageData;

    invoke-static {v0}, La2dp/Vol/ManageData;->access$800(La2dp/Vol/ManageData;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Export Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Exporting database as XML..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, La2dp/Vol/ManageData$ExportDataAsXmlTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 233
    return-void
.end method
