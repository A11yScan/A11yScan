.class Ljp/maru/mrd/IconLoader$2;
.super Ljava/lang/Object;
.source "IconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/maru/mrd/IconLoader;->startLoading()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/maru/mrd/IconLoader;

.field private final synthetic val$loader:Ljp/maru/mrd/IconLoader;


# direct methods
.method constructor <init>(Ljp/maru/mrd/IconLoader;Ljp/maru/mrd/IconLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$2;->this$0:Ljp/maru/mrd/IconLoader;

    iput-object p2, p0, Ljp/maru/mrd/IconLoader$2;->val$loader:Ljp/maru/mrd/IconLoader;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$2;->val$loader:Ljp/maru/mrd/IconLoader;

    invoke-static {v0}, Ljp/maru/mrd/IconLoader;->access$6(Ljp/maru/mrd/IconLoader;)V

    .line 293
    return-void
.end method
