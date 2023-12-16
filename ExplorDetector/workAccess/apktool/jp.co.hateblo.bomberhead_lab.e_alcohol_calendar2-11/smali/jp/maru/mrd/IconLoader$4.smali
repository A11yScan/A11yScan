.class Ljp/maru/mrd/IconLoader$4;
.super Ljava/lang/Object;
.source "IconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/maru/mrd/IconLoader;->clickAgentDidReceiveLpUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/maru/mrd/IconLoader;

.field private final synthetic val$interURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/maru/mrd/IconLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$4;->this$0:Ljp/maru/mrd/IconLoader;

    iput-object p2, p0, Ljp/maru/mrd/IconLoader$4;->val$interURL:Ljava/lang/String;

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 710
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v1, :cond_0

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "now open url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljp/maru/mrd/IconLoader$4;->val$interURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$4;->this$0:Ljp/maru/mrd/IconLoader;

    invoke-static {v1}, Ljp/maru/mrd/IconLoader;->access$7(Ljp/maru/mrd/IconLoader;)Ljp/maru/mrd/IconLoader$URLOpener;

    move-result-object v1

    iget-object v2, p0, Ljp/maru/mrd/IconLoader$4;->val$interURL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljp/maru/mrd/IconLoader$URLOpener;->openURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
