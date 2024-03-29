.class Ljp/maru/mrd/IconLoader$_HandlerWithIndex;
.super Ljava/lang/Object;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_HandlerWithIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _index:I

.field private _isIndexShifted:Z

.field final handler:Ljp/maru/mrd/IconHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/IconHandler",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljp/maru/mrd/IconHandler;I)V
    .locals 0
    .param p2, "anIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconHandler",
            "<TU;>;I)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "this":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader<TT;>._HandlerWithIndex<TU;>;"
    .local p1, "aHandler":Ljp/maru/mrd/IconHandler;, "Ljp/maru/mrd/IconHandler<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p2, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    .line 826
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->handler:Ljp/maru/mrd/IconHandler;

    .line 827
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 830
    .local p0, "this":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader<TT;>._HandlerWithIndex<TU;>;"
    iget v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    return v0
.end method

.method public getIndexCurrentPhase()I
    .locals 1

    .prologue
    .line 840
    .local p0, "this":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader<TT;>._HandlerWithIndex<TU;>;"
    iget-boolean v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_isIndexShifted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    add-int/lit8 v0, v0, 0x32

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    goto :goto_0
.end method

.method public getIndexNextPhase()I
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader<TT;>._HandlerWithIndex<TU;>;"
    iget-boolean v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_isIndexShifted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_index:I

    add-int/lit8 v0, v0, 0x32

    goto :goto_0
.end method

.method public switchPhase()V
    .locals 1

    .prologue
    .line 835
    .local p0, "this":Ljp/maru/mrd/IconLoader$_HandlerWithIndex;, "Ljp/maru/mrd/IconLoader<TT;>._HandlerWithIndex<TU;>;"
    iget-boolean v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_isIndexShifted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljp/maru/mrd/IconLoader$_HandlerWithIndex;->_isIndexShifted:Z

    .line 836
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
