.class La2dp/Vol/PackagesChooser$2;
.super Ljava/lang/Object;
.source "PackagesChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/PackagesChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/PackagesChooser;


# direct methods
.method constructor <init>(La2dp/Vol/PackagesChooser;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/PackagesChooser;

    .prologue
    .line 176
    iput-object p1, p0, La2dp/Vol/PackagesChooser$2;->this$0:La2dp/Vol/PackagesChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, La2dp/Vol/PackagesChooser$2;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v0}, La2dp/Vol/PackagesChooser;->access$700(La2dp/Vol/PackagesChooser;)V

    .line 180
    iget-object v0, p0, La2dp/Vol/PackagesChooser$2;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v0}, La2dp/Vol/PackagesChooser;->access$800(La2dp/Vol/PackagesChooser;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    return-void
.end method
