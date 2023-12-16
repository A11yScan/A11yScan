.class final Lcom/directtap/s;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/s;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/s;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/s;->r:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/directtap/s;->s:Ljava/util/Map;

    invoke-direct {p0}, Lcom/directtap/s;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fullscreen_percent"

    invoke-static {v2}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fullscreen_portrait_percent"

    invoke-static {v2}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fullscreen_landscape_percent"

    invoke-static {v2}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/directtap/s;->d:Ljava/util/Map;

    const-string v0, "close_button_ref_density"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->a:I

    const-string v0, "animation_time_out"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->b:I

    const-string v0, "fullscreen_radius"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->e:I

    const-string v0, "fullscreen_margin"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->c:I

    const-string v0, "fullscreen_outside_alpha"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->f:I

    const-string v0, "close_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->g:I

    const-string v0, "close_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->h:I

    const-string v0, "back_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->i:I

    const-string v0, "back_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->j:I

    const-string v0, "finish_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->k:I

    const-string v0, "finish_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->l:I

    const-string v0, "back_landscape_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->m:I

    const-string v0, "back_landscape_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->n:I

    const-string v0, "finish_landscape_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->o:I

    const-string v0, "finish_landscape_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/directtap/s;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "width"

    const-string v2, "banner"

    const-string v3, "width"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    const-string v2, "banner"

    const-string v3, "height"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/directtap/s;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "width"

    const-string v2, "large-banner"

    const-string v3, "width"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    const-string v2, "large-banner"

    const-string v3, "height"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/directtap/s;->r:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "width"

    const-string v2, "landscape-banner"

    const-string v3, "width"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    const-string v2, "landscape-banner"

    const-string v3, "height"

    invoke-static {v2, v3}, Lcom/directtap/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/directtap/s;->s:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcom/directtap/s;->a:I

    return v0
.end method

.method protected a(I)I
    .locals 2

    iget-object v0, p0, Lcom/directtap/s;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/directtap/s;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/directtap/s;->b:I

    return v0
.end method

.method protected b(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/directtap/s;->g:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/directtap/s;->i:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/directtap/s;->k:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/directtap/s;->m:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/directtap/s;->o:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/directtap/s;->c:I

    return v0
.end method

.method protected c(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/directtap/s;->h:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/directtap/s;->j:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/directtap/s;->l:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/directtap/s;->n:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/directtap/s;->p:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected d()I
    .locals 1

    iget v0, p0, Lcom/directtap/s;->e:I

    return v0
.end method

.method protected d(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/directtap/s;->q:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/directtap/s;->r:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/directtap/s;->s:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected e()I
    .locals 1

    iget v0, p0, Lcom/directtap/s;->f:I

    return v0
.end method

.method protected e(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/directtap/s;->q:Ljava/util/Map;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/directtap/s;->r:Ljava/util/Map;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/directtap/s;->s:Ljava/util/Map;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
