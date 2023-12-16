.class Lcom/directtap/p$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p$a;->a()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/p$a;


# direct methods
.method constructor <init>(Lcom/directtap/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$a$3;->a:Lcom/directtap/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 3

    iget-object v0, p0, Lcom/directtap/p$a$3;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-virtual {v0}, Lcom/directtap/p;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/directtap/p$a$3;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->n(Lcom/directtap/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/directtap/p$a$3;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    invoke-static {v0}, Lcom/directtap/p;->k(Lcom/directtap/p;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/directtap/p$a$3;->a:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/directtap/p;->setVisibility(I)V

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
