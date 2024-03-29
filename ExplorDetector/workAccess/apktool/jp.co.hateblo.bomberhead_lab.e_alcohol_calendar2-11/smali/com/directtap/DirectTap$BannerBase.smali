.class public abstract Lcom/directtap/DirectTap$BannerBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/DirectTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BannerBase"
.end annotation


# instance fields
.field protected a:I

.field private b:Landroid/app/Activity;

.field private c:Lcom/directtap/DTViewConfig;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->b:Landroid/app/Activity;

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    iput-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    const/4 v0, 0x3

    iput v0, p0, Lcom/directtap/DirectTap$BannerBase;->a:I

    iput-object p1, p0, Lcom/directtap/DirectTap$BannerBase;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$BannerBase;
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    return-object p0
.end method

.method public build()Lcom/directtap/DirectTapBanner;
    .locals 4

    new-instance v0, Lcom/directtap/DirectTapBanner;

    iget-object v1, p0, Lcom/directtap/DirectTap$BannerBase;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    iget v3, p0, Lcom/directtap/DirectTap$BannerBase;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/directtap/DirectTapBanner;-><init>(Landroid/app/Activity;Lcom/directtap/DTViewConfig;I)V

    return-object v0
.end method

.method public setBannerFitScreenWidth(Z)Lcom/directtap/DirectTap$BannerBase;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setBannerFitScreenWidth(Z)V

    return-object p0
.end method

.method public setBannerPosition(I)Lcom/directtap/DirectTap$BannerBase;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setBannerPosition(I)V

    return-object p0
.end method

.method public setLoadOnCreate(Z)Lcom/directtap/DirectTap$BannerBase;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setLoadContent(Z)V

    return-object p0
.end method

.method public setRefreshTimeInterval(J)Lcom/directtap/DirectTap$BannerBase;
    .locals 2

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v0

    iget v1, p0, Lcom/directtap/DirectTap$BannerBase;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/directtap/DTViewConfig;->setRefreshTimeInterval(IJ)V

    return-object p0
.end method

.method public setReleaseOnDetached(Z)Lcom/directtap/DirectTap$BannerBase;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setReleaseOnDetached(Z)V

    return-object p0
.end method

.method public showOverlay()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/directtap/DirectTap$BannerBase;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/DirectTap$BannerBase;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/directtap/DirectTap$BannerBase;->c:Lcom/directtap/DTViewConfig;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/directtap/DirectTap;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V

    return-void
.end method
