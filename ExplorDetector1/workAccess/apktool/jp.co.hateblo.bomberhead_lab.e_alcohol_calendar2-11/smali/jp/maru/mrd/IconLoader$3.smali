.class Ljp/maru/mrd/IconLoader$3;
.super Ljava/lang/Object;
.source "IconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/maru/mrd/IconLoader;->refresh_main()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/maru/mrd/IconLoader;

.field private final synthetic val$currentStub:Ljp/maru/mrd/IconLoader$IconContentStub;


# direct methods
.method constructor <init>(Ljp/maru/mrd/IconLoader;Ljp/maru/mrd/IconLoader$IconContentStub;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$3;->this$0:Ljp/maru/mrd/IconLoader;

    iput-object p2, p0, Ljp/maru/mrd/IconLoader$3;->val$currentStub:Ljp/maru/mrd/IconLoader$IconContentStub;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$3;->val$currentStub:Ljp/maru/mrd/IconLoader$IconContentStub;

    invoke-virtual {v1}, Ljp/maru/mrd/IconLoader$IconContentStub;->getResult()Ljp/maru/mrd/IconContent;

    move-result-object v0

    .line 389
    .local v0, "ctnt":Ljp/maru/mrd/IconContent;
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$3;->this$0:Ljp/maru/mrd/IconLoader;

    invoke-static {v1, p0}, Ljp/maru/mrd/IconLoader;->access$2(Ljp/maru/mrd/IconLoader;Ljava/lang/Runnable;)V

    .line 390
    iget-object v1, p0, Ljp/maru/mrd/IconLoader$3;->this$0:Ljp/maru/mrd/IconLoader;

    iget-object v2, p0, Ljp/maru/mrd/IconLoader$3;->val$currentStub:Ljp/maru/mrd/IconLoader$IconContentStub;

    iget v2, v2, Ljp/maru/mrd/IconLoader$IconContentStub;->idx_:I

    invoke-virtual {v1, v2, v0}, Ljp/maru/mrd/IconLoader;->contentLoaded(ILjp/maru/mrd/IconContent;)V

    .line 391
    return-void
.end method
