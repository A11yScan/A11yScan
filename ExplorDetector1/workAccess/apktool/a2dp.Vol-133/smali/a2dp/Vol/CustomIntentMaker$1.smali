.class La2dp/Vol/CustomIntentMaker$1;
.super Ljava/lang/Object;
.source "CustomIntentMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/CustomIntentMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/CustomIntentMaker;


# direct methods
.method constructor <init>(La2dp/Vol/CustomIntentMaker;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 51
    iput-object p1, p0, La2dp/Vol/CustomIntentMaker$1;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, La2dp/Vol/CustomIntentMaker$1;->this$0:La2dp/Vol/CustomIntentMaker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, La2dp/Vol/CustomIntentMaker;->setResult(ILandroid/content/Intent;)V

    .line 56
    iget-object v1, p0, La2dp/Vol/CustomIntentMaker$1;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-virtual {v1}, La2dp/Vol/CustomIntentMaker;->finish()V

    .line 57
    return-void
.end method
