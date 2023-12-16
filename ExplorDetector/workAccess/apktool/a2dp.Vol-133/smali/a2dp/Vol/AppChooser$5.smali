.class La2dp/Vol/AppChooser$5;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method constructor <init>(La2dp/Vol/AppChooser;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 107
    iput-object p1, p0, La2dp/Vol/AppChooser$5;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "package_name"

    iget-object v1, p0, La2dp/Vol/AppChooser$5;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v1}, La2dp/Vol/AppChooser;->access$100(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2dp/Vol/AppChooser$AppInfoCache;

    invoke-virtual {v1}, La2dp/Vol/AppChooser$AppInfoCache;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, La2dp/Vol/AppChooser$5;->this$0:La2dp/Vol/AppChooser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, La2dp/Vol/AppChooser;->setResult(ILandroid/content/Intent;)V

    .line 113
    iget-object v1, p0, La2dp/Vol/AppChooser$5;->this$0:La2dp/Vol/AppChooser;

    invoke-virtual {v1}, La2dp/Vol/AppChooser;->finish()V

    .line 115
    return-void
.end method
