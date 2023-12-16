.class La2dp/Vol/ManageData$1;
.super Ljava/lang/Object;
.source "ManageData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/ManageData;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/ManageData;


# direct methods
.method constructor <init>(La2dp/Vol/ManageData;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/ManageData;

    .prologue
    .line 75
    iput-object p1, p0, La2dp/Vol/ManageData$1;->this$0:La2dp/Vol/ManageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, La2dp/Vol/ManageData$1;->this$0:La2dp/Vol/ManageData;

    invoke-static {v0}, La2dp/Vol/ManageData;->access$100(La2dp/Vol/ManageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, La2dp/Vol/ManageData$ExportDatabaseFileTask;

    iget-object v1, p0, La2dp/Vol/ManageData$1;->this$0:La2dp/Vol/ManageData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La2dp/Vol/ManageData$ExportDatabaseFileTask;-><init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/ManageData$ExportDatabaseFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, La2dp/Vol/ManageData$1;->this$0:La2dp/Vol/ManageData;

    const-string v1, "External storage is not available, unable to export data."

    .line 81
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
