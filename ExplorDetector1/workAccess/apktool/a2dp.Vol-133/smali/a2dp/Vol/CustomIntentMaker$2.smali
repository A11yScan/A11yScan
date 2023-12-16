.class La2dp/Vol/CustomIntentMaker$2;
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
    .line 60
    iput-object p1, p0, La2dp/Vol/CustomIntentMaker$2;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker$2;->this$0:La2dp/Vol/CustomIntentMaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La2dp/Vol/CustomIntentMaker;->setResult(I)V

    .line 64
    iget-object v0, p0, La2dp/Vol/CustomIntentMaker$2;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-virtual {v0}, La2dp/Vol/CustomIntentMaker;->finish()V

    .line 65
    return-void
.end method
