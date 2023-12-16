.class public Ljp/maru/mrd/IconCell;
.super Landroid/view/View;
.source "IconCell.java"

# interfaces
.implements Ljp/maru/mrd/IconHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Ljp/maru/mrd/IconHandler",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TITLE_TEXT_ALIGN:Landroid/graphics/Paint$Align;

.field public static final DEFAULT_TITLE_TEXT_SIZE:F = 14.0f


# instance fields
.field private _content:Ljp/maru/mrd/IconContent;

.field private _iconBounds:Landroid/graphics/Rect;

.field private _iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private _iconLoader:Ljp/maru/mrd/IconLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _isAttached:Z

.field private _isInTouched:Z

.field private _resources:Landroid/content/res/Resources;

.field private _sysId:Ljava/lang/Integer;

.field private _textPaint:Landroid/graphics/Paint;

.field private _titlePositionX:I

.field private _titlePositionY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    sput-object v0, Ljp/maru/mrd/IconCell;->DEFAULT_TITLE_TEXT_ALIGN:Landroid/graphics/Paint$Align;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x25

    iput v0, p0, Ljp/maru/mrd/IconCell;->_titlePositionX:I

    .line 36
    const/16 v0, 0x48

    iput v0, p0, Ljp/maru/mrd/IconCell;->_titlePositionY:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x9

    const/16 v2, 0x42

    const/16 v3, 0x39

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    .line 51
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    .line 54
    iput-boolean v4, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    .line 55
    iput-boolean v4, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_resources:Landroid/content/res/Resources;

    .line 70
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    sget-object v1, Ljp/maru/mrd/IconCell;->DEFAULT_TITLE_TEXT_ALIGN:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 75
    return-void
.end method

.method private _processTouchUp()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_content:Ljp/maru/mrd/IconContent;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljp/maru/mrd/IconLoader;->processTouch(Ljava/lang/Object;)V

    .line 316
    :cond_0
    return-void
.end method

.method private _setContent(Ljp/maru/mrd/IconContent;)V
    .locals 3
    .param p1, "ctnt"    # Ljp/maru/mrd/IconContent;

    .prologue
    .line 219
    iput-object p1, p0, Ljp/maru/mrd/IconCell;->_content:Ljp/maru/mrd/IconContent;

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 225
    :goto_0
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->postInvalidate()V

    .line 226
    return-void

    .line 223
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljp/maru/mrd/IconContent;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ljp/maru/mrd/IconCell;->_iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private _updateLoaderEntry()V
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->getWindowVisibility()I

    move-result v0

    .line 348
    .local v0, "visibility":I
    iget-boolean v1, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    if-eqz v1, :cond_1

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    .line 351
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    iget-object v2, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljp/maru/mrd/IconLoader;->removeIconHandler(Ljava/lang/Object;)Ljp/maru/mrd/IconHandler;

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    .line 358
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    iget-object v2, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    invoke-virtual {v1, v2, p0}, Ljp/maru/mrd/IconLoader;->putIconHandler(Ljava/lang/Object;Ljp/maru/mrd/IconHandler;)Z

    goto :goto_0
.end method


# virtual methods
.method public addToIconLoader(Ljp/maru/mrd/IconLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<Ljava/lang/Integer;>;"
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add iconCell to multiple loader; cell:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iput-object p1, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    .line 192
    iget-boolean v0, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, p0}, Ljp/maru/mrd/IconLoader;->putIconHandler(Ljava/lang/Object;Ljp/maru/mrd/IconHandler;)Z

    .line 195
    :cond_1
    return-void
.end method

.method public getIconBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTitlePoision()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Ljp/maru/mrd/IconCell;->_titlePositionX:I

    iget v2, p0, Ljp/maru/mrd/IconCell;->_titlePositionY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getTitleTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTextSize()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public iconLoaderClearContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/maru/mrd/IconCell;->_setContent(Ljp/maru/mrd/IconContent;)V

    .line 247
    return-void
.end method

.method public bridge synthetic iconLoaderClearContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljp/maru/mrd/IconLoader;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljp/maru/mrd/IconCell;->iconLoaderClearContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;)V

    return-void
.end method

.method public iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/maru/mrd/IconCell;->_setContent(Ljp/maru/mrd/IconContent;)V

    .line 242
    return-void
.end method

.method public bridge synthetic iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljp/maru/mrd/IconLoader;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljp/maru/mrd/IconCell;->iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;)V

    return-void
.end method

.method public iconLoaderDidReceiveContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;Ljp/maru/mrd/IconContent;)V
    .locals 3
    .param p2, "id"    # Ljava/lang/Integer;
    .param p3, "ctnt"    # Ljp/maru/mrd/IconContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljp/maru/mrd/IconContent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "loader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<Ljava/lang/Integer;>;"
    sget v0, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v0, :cond_0

    .line 234
    const-string v0, "mrd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "didReceiveIconContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-direct {p0, p3}, Ljp/maru/mrd/IconCell;->_setContent(Ljp/maru/mrd/IconContent;)V

    .line 237
    return-void
.end method

.method public bridge synthetic iconLoaderDidReceiveContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;Ljp/maru/mrd/IconContent;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljp/maru/mrd/IconLoader;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Ljp/maru/mrd/IconCell;->iconLoaderDidReceiveContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Integer;Ljp/maru/mrd/IconContent;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljp/maru/mrd/IconCell;->_updateLoaderEntry()V

    .line 369
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljp/maru/mrd/IconCell;->_updateLoaderEntry()V

    .line 375
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0x7f

    .line 287
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v1, :cond_0

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDraw in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_content:Ljp/maru/mrd/IconContent;

    if-nez v1, :cond_1

    .line 309
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-boolean v1, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 300
    :cond_2
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 302
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    :cond_3
    iget-object v1, p0, Ljp/maru/mrd/IconCell;->_content:Ljp/maru/mrd/IconContent;

    invoke-virtual {v1}, Ljp/maru/mrd/IconContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "title":Ljava/lang/String;
    iget v1, p0, Ljp/maru/mrd/IconCell;->_titlePositionX:I

    int-to-float v1, v1

    iget v2, p0, Ljp/maru/mrd/IconCell;->_titlePositionY:I

    int-to-float v2, v2

    iget-object v3, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 254
    sget v16, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v16, :cond_0

    .line 255
    const-string v16, "mrd"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "onLayout:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", c:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",l:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",t:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",r:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",b:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 258
    if-eqz p1, :cond_2

    .line 259
    const/high16 v4, 0x42960000    # 75.0f

    .line 260
    .local v4, "defW":F
    const/high16 v3, 0x42960000    # 75.0f

    .line 261
    .local v3, "defH":F
    const/high16 v7, 0x42640000    # 57.0f

    .local v7, "imgH":F
    const/high16 v9, 0x42640000    # 57.0f

    .line 262
    .local v9, "imgW":F
    const/high16 v12, 0x41900000    # 18.0f

    .line 263
    .local v12, "textH":F
    sub-int v14, p4, p2

    .line 264
    .local v14, "viewWidth":I
    sub-int v13, p5, p3

    .line 265
    .local v13, "viewHeight":I
    int-to-float v0, v14

    move/from16 v16, v0

    const/high16 v17, 0x42960000    # 75.0f

    div-float v15, v16, v17

    .line 266
    .local v15, "wFactor":F
    int-to-float v0, v13

    move/from16 v16, v0

    const/high16 v17, 0x42960000    # 75.0f

    div-float v5, v16, v17

    .line 267
    .local v5, "hFactor":F
    cmpl-float v16, v15, v5

    if-lez v16, :cond_3

    move v6, v5

    .line 268
    .local v6, "imgFactor":F
    :goto_0
    const/high16 v16, 0x42640000    # 57.0f

    mul-float v8, v16, v6

    .line 269
    .local v8, "imgHScaled":F
    const/high16 v16, 0x42640000    # 57.0f

    mul-float v10, v16, v6

    .line 270
    .local v10, "imgWScaled":F
    int-to-float v0, v13

    move/from16 v16, v0

    sub-float v2, v16, v8

    .line 271
    .local v2, "bottomMargin":F
    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v16, v16, v10

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v11, v16, v17

    .line 272
    .local v11, "leftMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    float-to-int v0, v2

    move/from16 v17, v0

    sub-int v17, v13, v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 275
    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffe666666666666L    # 1.9

    mul-double v16, v16, v18

    float-to-double v0, v12

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v17

    div-float v18, v2, v12

    mul-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    const v16, 0x3ff33333    # 1.9f

    mul-float v12, v2, v16

    .line 279
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    float-to-int v0, v12

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljp/maru/mrd/IconCell;->_titlePositionY:I

    .line 280
    div-int/lit8 v16, v14, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljp/maru/mrd/IconCell;->_titlePositionX:I

    .line 282
    .end local v2    # "bottomMargin":F
    .end local v3    # "defH":F
    .end local v4    # "defW":F
    .end local v5    # "hFactor":F
    .end local v6    # "imgFactor":F
    .end local v7    # "imgH":F
    .end local v8    # "imgHScaled":F
    .end local v9    # "imgW":F
    .end local v10    # "imgWScaled":F
    .end local v11    # "leftMargin":F
    .end local v12    # "textH":F
    .end local v13    # "viewHeight":I
    .end local v14    # "viewWidth":I
    .end local v15    # "wFactor":F
    :cond_2
    return-void

    .restart local v3    # "defH":F
    .restart local v4    # "defW":F
    .restart local v5    # "hFactor":F
    .restart local v7    # "imgH":F
    .restart local v9    # "imgW":F
    .restart local v12    # "textH":F
    .restart local v13    # "viewHeight":I
    .restart local v14    # "viewWidth":I
    .restart local v15    # "wFactor":F
    :cond_3
    move v6, v15

    .line 267
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "evnt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 321
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-le v1, v4, :cond_2

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    .line 325
    .local v0, "isInTouched_at1":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 340
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    if-eq v0, v1, :cond_1

    .line 341
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->invalidate()V

    .line 343
    :cond_1
    return v4

    .line 322
    .end local v0    # "isInTouched_at1":Z
    :cond_2
    sget v1, Ljp/maru/mrd/Config;->LOG_LEVEL_:I

    if-lez v1, :cond_0

    const-string v1, "mrd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    .restart local v0    # "isInTouched_at1":Z
    :pswitch_1
    iput-boolean v4, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    goto :goto_1

    .line 331
    :pswitch_2
    iput-boolean v5, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    goto :goto_1

    .line 336
    :pswitch_3
    invoke-direct {p0}, Ljp/maru/mrd/IconCell;->_processTouchUp()V

    .line 337
    iput-boolean v5, p0, Ljp/maru/mrd/IconCell;->_isInTouched:Z

    goto :goto_1

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visiblity"    # I

    .prologue
    .line 380
    invoke-direct {p0}, Ljp/maru/mrd/IconCell;->_updateLoaderEntry()V

    .line 381
    return-void
.end method

.method public removeFromIconLoader()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    iget-object v2, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    iget-boolean v2, p0, Ljp/maru/mrd/IconCell;->_isAttached:Z

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    iget-object v3, p0, Ljp/maru/mrd/IconCell;->_sysId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljp/maru/mrd/IconLoader;->removeIconHandler(Ljava/lang/Object;)Ljp/maru/mrd/IconHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 207
    .local v0, "removed":Z
    :cond_2
    if-eqz v0, :cond_0

    iput-object v4, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    goto :goto_0

    .line 210
    .end local v0    # "removed":Z
    :cond_3
    iput-object v4, p0, Ljp/maru/mrd/IconCell;->_iconLoader:Ljp/maru/mrd/IconLoader;

    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public setIconBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->invalidate()V

    .line 152
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 169
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    return-void
.end method

.method public setTitlePosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 88
    iput p1, p0, Ljp/maru/mrd/IconCell;->_titlePositionX:I

    .line 89
    iput p2, p0, Ljp/maru/mrd/IconCell;->_titlePositionY:I

    .line 90
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->invalidate()V

    .line 91
    return-void
.end method

.method public setTitlePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 99
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Ljp/maru/mrd/IconCell;->setTitlePosition(II)V

    .line 100
    return-void
.end method

.method public setTitleTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 117
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->invalidate()V

    .line 119
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 133
    iget-object v0, p0, Ljp/maru/mrd/IconCell;->_textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    invoke-virtual {p0}, Ljp/maru/mrd/IconCell;->invalidate()V

    .line 135
    return-void
.end method
