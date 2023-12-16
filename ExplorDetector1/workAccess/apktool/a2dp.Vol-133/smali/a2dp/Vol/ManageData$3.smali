.class La2dp/Vol/ManageData$3;
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
    .line 107
    iput-object p1, p0, La2dp/Vol/ManageData$3;->this$0:La2dp/Vol/ManageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, La2dp/Vol/ManageData$3;->this$0:La2dp/Vol/ManageData;

    invoke-static {v0}, La2dp/Vol/ManageData;->access$100(La2dp/Vol/ManageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, La2dp/Vol/ManageData$ImportDatabaseFileTask;

    iget-object v1, p0, La2dp/Vol/ManageData$3;->this$0:La2dp/Vol/ManageData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La2dp/Vol/ManageData$ImportDatabaseFileTask;-><init>(La2dp/Vol/ManageData;La2dp/Vol/ManageData$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "devices"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, La2dp/Vol/ManageData$3;->this$0:La2dp/Vol/ManageData;

    iget-object v3, v3, La2dp/Vol/ManageData;->a2dpDir:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, La2dp/Vol/ManageData$ImportDatabaseFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, La2dp/Vol/ManageData$3;->this$0:La2dp/Vol/ManageData;

    const-string v1, "External storage is not available, unable to import data."

    .line 114
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
