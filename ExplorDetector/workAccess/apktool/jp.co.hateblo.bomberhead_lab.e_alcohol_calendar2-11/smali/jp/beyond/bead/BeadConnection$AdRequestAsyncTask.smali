.class Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdIdList:Ljava/lang/String;

.field final synthetic this$0:Ljp/beyond/bead/BeadConnection;


# direct methods
.method public constructor <init>(Ljp/beyond/bead/BeadConnection;Ljava/lang/String;)V
    .locals 1
    .param p2, "adIdList"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 403
    const-string v0, ""

    iput-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    .line 410
    iput-object p2, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    .line 411
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 416
    const/4 v3, 0x0

    .line 418
    .local v3, "result":Z
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    sget-object v6, Ljp/beyond/bead/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v5, v6}, Ljp/beyond/bead/BeadConnection;->access$0(Ljp/beyond/bead/BeadConnection;Ljp/beyond/bead/BeadConnection$RequestStatus;)V

    .line 424
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    iget-object v6, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v6}, Ljp/beyond/bead/BeadConnection;->access$1(Ljp/beyond/bead/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljp/beyond/bead/BeadConnection;->getOrientationParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "orientation":Ljava/lang/String;
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    iget-object v6, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v6}, Ljp/beyond/bead/BeadConnection;->access$2(Ljp/beyond/bead/BeadConnection;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v7}, Ljp/beyond/bead/BeadConnection;->access$3(Ljp/beyond/bead/BeadConnection;)I

    move-result v7

    iget-object v8, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->mAdIdList:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7, v8}, Ljp/beyond/bead/BeadConnection;->getAdRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    iget-object v6, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v6}, Ljp/beyond/bead/BeadConnection;->access$1(Ljp/beyond/bead/BeadConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6, v4}, Ljp/beyond/bead/BeadConnection;->access$4(Ljp/beyond/bead/BeadConnection;Landroid/content/Context;Ljava/lang/String;)Ljp/beyond/bead/BeadData;

    move-result-object v0

    .line 433
    .local v0, "adData":Ljp/beyond/bead/BeadData;
    if-nez v0, :cond_0

    .line 434
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 455
    :goto_0
    return-object v5

    .line 437
    :cond_0
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadData;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljp/beyond/bead/BeadConnection;->access$5(Ljp/beyond/bead/BeadConnection;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 440
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 444
    :cond_1
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v5}, Ljp/beyond/bead/BeadConnection;->access$1(Ljp/beyond/bead/BeadConnection;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v6}, Ljp/beyond/bead/BeadConnection;->getAdDataFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Ljp/beyond/bead/FileUtil;->saveFile(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;)V

    .line 447
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v5}, Ljp/beyond/bead/BeadConnection;->access$1(Ljp/beyond/bead/BeadConnection;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v6}, Ljp/beyond/bead/BeadConnection;->getAdImageFileName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v5, v1, v6, v7}, Ljp/beyond/bead/FileUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 450
    iget-object v5, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadData;->getAid()I

    move-result v6

    invoke-static {v5, v6}, Ljp/beyond/bead/BeadConnection;->access$6(Ljp/beyond/bead/BeadConnection;I)V

    .line 452
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "receive ad"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v3, 0x1

    .line 455
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 463
    sget-object v0, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v1, "cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-virtual {v0}, Ljp/beyond/bead/BeadConnection;->deleteFiles()V

    .line 467
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v0, v1}, Ljp/beyond/bead/BeadConnection;->access$0(Ljp/beyond/bead/BeadConnection;Ljp/beyond/bead/BeadConnection$RequestStatus;)V

    .line 468
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Received:Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v0, v1}, Ljp/beyond/bead/BeadConnection;->access$0(Ljp/beyond/bead/BeadConnection;Ljp/beyond/bead/BeadConnection$RequestStatus;)V

    .line 479
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    invoke-static {v0}, Ljp/beyond/bead/BeadConnection;->access$7(Ljp/beyond/bead/BeadConnection;)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->this$0:Ljp/beyond/bead/BeadConnection;

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v0, v1}, Ljp/beyond/bead/BeadConnection;->access$0(Ljp/beyond/bead/BeadConnection;Ljp/beyond/bead/BeadConnection$RequestStatus;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljp/beyond/bead/BeadConnection$AdRequestAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
