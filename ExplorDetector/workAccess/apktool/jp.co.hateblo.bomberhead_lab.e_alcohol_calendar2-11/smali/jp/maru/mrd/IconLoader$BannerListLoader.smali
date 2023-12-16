.class Ljp/maru/mrd/IconLoader$BannerListLoader;
.super Ljp/maru/mrd/HttpAgent;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljp/maru/mrd/HttpAgent",
        "<[",
        "Ljp/maru/mrd/IconLoader$IconContentStub;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _indices:[I

.field private _mediaCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 488
    const-class v0, Ljp/maru/mrd/IconLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljp/maru/mrd/IconLoader$BannerListLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>([ILjava/lang/String;)V
    .locals 2
    .param p1, "indices"    # [I
    .param p2, "mediaCode"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-direct {p0}, Ljp/maru/mrd/HttpAgent;-><init>()V

    .line 495
    sget-boolean v0, Ljp/maru/mrd/IconLoader$BannerListLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "indices is not set"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 496
    :cond_0
    sget-boolean v0, Ljp/maru/mrd/IconLoader$BannerListLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "indices is empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 497
    :cond_1
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_indices:[I

    .line 498
    iput-object p2, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_mediaCode:Ljava/lang/String;

    .line 499
    return-void
.end method

.method private static getAttrInParserForName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 631
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 627
    :cond_0
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 625
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseXMLIntoStubs(Lorg/xmlpull/v1/XmlPullParser;[Ljp/maru/mrd/IconLoader$IconContentStub;)I
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "stubs"    # [Ljp/maru/mrd/IconLoader$IconContentStub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 551
    .local v2, "imgbase":Ljava/lang/String;
    const/4 v6, 0x0

    .line 552
    .local v6, "stub":Ljp/maru/mrd/IconLoader$IconContentStub;, "Ljp/maru/mrd/IconLoader$IconContentStub;"
    const/4 v3, 0x0

    .line 553
    .local v3, "nStubs":I
    const/16 v10, 0x8

    new-array v9, v10, [Ljava/lang/String;

    .line 554
    .local v9, "tags":[Ljava/lang/String;
    const/4 v7, -0x1

    .line 555
    .local v7, "tagDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "eventType":I
    move v8, v7

    .end local v7    # "tagDepth":I
    .local v8, "tagDepth":I
    move v4, v3

    .line 556
    .end local v3    # "nStubs":I
    .local v4, "nStubs":I
    :goto_0
    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    .line 620
    return v4

    .line 558
    :cond_0
    sget v10, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    .line 559
    const-string v10, "mrd"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xml eventType:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v7, v8

    .end local v8    # "tagDepth":I
    .restart local v7    # "tagDepth":I
    move v3, v4

    .line 618
    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v7

    .end local v7    # "tagDepth":I
    .restart local v8    # "tagDepth":I
    move v4, v3

    .end local v3    # "nStubs":I
    .restart local v4    # "nStubs":I
    goto :goto_0

    .line 565
    :pswitch_0
    add-int/lit8 v7, v8, 0x1

    .line 566
    .end local v8    # "tagDepth":I
    .restart local v7    # "tagDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 567
    aget-object v10, v9, v7

    const-string v11, "content"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 568
    if-nez v6, :cond_8

    .line 569
    new-instance v6, Ljp/maru/mrd/IconLoader$IconContentStub;

    .end local v6    # "stub":Ljp/maru/mrd/IconLoader$IconContentStub;, "Ljp/maru/mrd/IconLoader$IconContentStub;"
    const/4 v10, 0x0

    invoke-direct {v6, v10}, Ljp/maru/mrd/IconLoader$IconContentStub;-><init>(Ljp/maru/mrd/IconLoader$IconContentStub;)V

    .line 570
    .restart local v6    # "stub":Ljp/maru/mrd/IconLoader$IconContentStub;, "Ljp/maru/mrd/IconLoader$IconContentStub;"
    const-string v10, "idx"

    invoke-static {p1, v10}, Ljp/maru/mrd/IconLoader$BannerListLoader;->getAttrInParserForName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "idxStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->idx_:I

    .line 572
    const-string v10, "key"

    invoke-static {p1, v10}, Ljp/maru/mrd/IconLoader$BannerListLoader;->getAttrInParserForName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->key_:Ljava/lang/String;

    .line 573
    sget v10, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v10, :cond_8

    .line 574
    const-string v10, "mrd"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " new content key:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->key_:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",idx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->idx_:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    goto :goto_2

    .line 577
    .end local v1    # "idxStr":Ljava/lang/String;
    .end local v3    # "nStubs":I
    .restart local v4    # "nStubs":I
    :cond_3
    aget-object v10, v9, v7

    const-string v11, "imgbase"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 578
    const-string v10, "href"

    invoke-static {p1, v10}, Ljp/maru/mrd/IconLoader$BannerListLoader;->getAttrInParserForName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v3, v4

    .line 580
    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    goto :goto_2

    .line 584
    .end local v3    # "nStubs":I
    .end local v7    # "tagDepth":I
    .restart local v4    # "nStubs":I
    .restart local v8    # "tagDepth":I
    :pswitch_1
    aget-object v10, v9, v8

    const-string v11, "content"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 585
    if-eqz v6, :cond_7

    .line 586
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    aput-object v6, p2, v4

    .line 587
    invoke-virtual {v6}, Ljp/maru/mrd/IconLoader$IconContentStub;->startSending()V

    .line 588
    const/4 v6, 0x0

    .line 594
    :goto_3
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "tagDepth":I
    .restart local v7    # "tagDepth":I
    const/4 v10, 0x0

    aput-object v10, v9, v8

    goto/16 :goto_2

    .line 599
    .end local v3    # "nStubs":I
    .end local v7    # "tagDepth":I
    .restart local v4    # "nStubs":I
    .restart local v8    # "tagDepth":I
    :pswitch_2
    if-ltz v8, :cond_2

    .line 600
    aget-object v10, v9, v8

    const-string v11, "path"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, "pathStr":Ljava/lang/String;
    const-string v10, "http://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    .line 603
    const-string v10, "https://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    .line 604
    :cond_4
    iput-object v5, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    .line 608
    :goto_4
    sget v10, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v10, :cond_2

    .line 609
    const-string v10, "mrd"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "iconURL:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .end local v8    # "tagDepth":I
    .restart local v7    # "tagDepth":I
    move v3, v4

    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    goto/16 :goto_2

    .line 606
    .end local v3    # "nStubs":I
    .end local v7    # "tagDepth":I
    .restart local v4    # "nStubs":I
    .restart local v8    # "tagDepth":I
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->iconURL_:Ljava/lang/String;

    goto :goto_4

    .line 611
    .end local v5    # "pathStr":Ljava/lang/String;
    :cond_6
    aget-object v10, v9, v8

    const-string v11, "text"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 612
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Ljp/maru/mrd/IconLoader$IconContentStub;->title_:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    move v3, v4

    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    goto :goto_3

    .end local v3    # "nStubs":I
    .end local v8    # "tagDepth":I
    .restart local v4    # "nStubs":I
    .restart local v7    # "tagDepth":I
    :cond_8
    move v3, v4

    .end local v4    # "nStubs":I
    .restart local v3    # "nStubs":I
    goto/16 :goto_2

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getURLString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_indices:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 504
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_indices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljp/maru/mrd/IconLoader$BannerListLoader;->baseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_mediaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mbget.cgi?size=73x75&ucd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljp/maru/mrd/IconLoader;->access$0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 505
    :cond_0
    const-string v2, "&idx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v2, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_indices:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic readStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/maru/mrd/IconLoader$BannerListLoader;->readStream(Ljava/io/InputStream;)[Ljp/maru/mrd/IconLoader$IconContentStub;

    move-result-object v0

    return-object v0
.end method

.method protected readStream(Ljava/io/InputStream;)[Ljp/maru/mrd/IconLoader$IconContentStub;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 528
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 529
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v5, p0, Ljp/maru/mrd/IconLoader$BannerListLoader;->_indices:[I

    array-length v5, v5

    new-array v3, v5, [Ljp/maru/mrd/IconLoader$IconContentStub;

    .line 530
    .local v3, "stubs":[Ljp/maru/mrd/IconLoader$IconContentStub;
    const/4 v1, 0x0

    .line 532
    .local v1, "nStubs":I
    :try_start_0
    const-string v5, "UTF-8"

    invoke-interface {v2, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, v2, v3}, Ljp/maru/mrd/IconLoader$BannerListLoader;->parseXMLIntoStubs(Lorg/xmlpull/v1/XmlPullParser;[Ljp/maru/mrd/IconLoader$IconContentStub;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    :goto_0
    array-length v5, v3

    if-le v5, v1, :cond_0

    .line 539
    new-array v4, v1, [Ljp/maru/mrd/IconLoader$IconContentStub;

    .line 540
    .local v4, "stubs_cp":[Ljp/maru/mrd/IconLoader$IconContentStub;
    invoke-static {v3, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    move-object v3, v4

    .line 543
    .end local v4    # "stubs_cp":[Ljp/maru/mrd/IconLoader$IconContentStub;
    :cond_0
    return-object v3

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
