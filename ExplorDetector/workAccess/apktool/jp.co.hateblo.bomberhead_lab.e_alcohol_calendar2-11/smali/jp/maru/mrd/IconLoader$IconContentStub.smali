.class Ljp/maru/mrd/IconLoader$IconContentStub;
.super Ljp/maru/mrd/HttpAgent;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconContentStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljp/maru/mrd/HttpAgent",
        "<",
        "Ljp/maru/mrd/IconContent;",
        ">;"
    }
.end annotation


# static fields
.field static final _sharedContentCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/maru/mrd/IconContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cachedResult_:Ljp/maru/mrd/IconContent;

.field iconURL_:Ljava/lang/String;

.field idx_:I

.field key_:Ljava/lang/String;

.field title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Ljp/maru/mrd/IconLoader$IconContentStub;->_sharedContentCache:Ljava/util/WeakHashMap;

    .line 635
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljp/maru/mrd/HttpAgent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/maru/mrd/IconLoader$IconContentStub;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljp/maru/mrd/IconLoader$IconContentStub;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ljp/maru/mrd/IconLoader$IconContentStub;->getResult()Ljp/maru/mrd/IconContent;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljp/maru/mrd/IconContent;
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    .line 676
    :goto_0
    return-object v0

    .line 670
    :cond_0
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 672
    :cond_1
    invoke-super {p0}, Ljp/maru/mrd/HttpAgent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/maru/mrd/IconContent;

    iput-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    .line 673
    sget-object v1, Ljp/maru/mrd/IconLoader$IconContentStub;->_sharedContentCache:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 674
    :try_start_0
    sget-object v0, Ljp/maru/mrd/IconLoader$IconContentStub;->_sharedContentCache:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->key_:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic readStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/maru/mrd/IconLoader$IconContentStub;->readStream(Ljava/io/InputStream;)Ljp/maru/mrd/IconContent;

    move-result-object v0

    return-object v0
.end method

.method protected readStream(Ljava/io/InputStream;)Ljp/maru/mrd/IconContent;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v6, 0x72

    const/4 v5, 0x0

    .line 686
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 687
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 688
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 689
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 690
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 691
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 692
    .local v3, "padding":Landroid/graphics/Rect;
    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 693
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljp/maru/mrd/IconContent;

    invoke-direct {v1}, Ljp/maru/mrd/IconContent;-><init>()V

    .line 694
    .local v1, "content":Ljp/maru/mrd/IconContent;
    invoke-virtual {v1, v0}, Ljp/maru/mrd/IconContent;->setIcon(Landroid/graphics/Bitmap;)V

    .line 695
    iget-object v4, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->title_:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljp/maru/mrd/IconContent;->setTitle(Ljava/lang/String;)V

    .line 696
    return-object v1
.end method

.method public startSending()V
    .locals 6

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, "content":Ljp/maru/mrd/IconContent;
    sget-object v3, Ljp/maru/mrd/IconLoader$IconContentStub;->_sharedContentCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 653
    :try_start_0
    sget-object v2, Ljp/maru/mrd/IconLoader$IconContentStub;->_sharedContentCache:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->key_:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljp/maru/mrd/IconContent;

    move-object v1, v0

    .line 652
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    if-eqz v1, :cond_1

    .line 656
    iput-object v1, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->cachedResult_:Ljp/maru/mrd/IconContent;

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 652
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 659
    :cond_1
    iget-object v2, p0, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 663
    invoke-super {p0}, Ljp/maru/mrd/HttpAgent;->startSending()V

    goto :goto_0
.end method
