.class final Lcom/directtap/u;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeBannerOverlayPositionForJS(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DTViewConfig;->decodePositionFromString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/directtap/DirectTap$Banner;->changeOverlayPosition(I)V

    return-void
.end method

.method public changeIconOverlayPositionForJS(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DTViewConfig;->decodePositionFromString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/directtap/DirectTap$Icon;->changeOverlayPosition(I)V

    return-void
.end method

.method public changeLandscapeBannerOverlayPositionForJS(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DTViewConfig;->decodePositionFromString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/directtap/DirectTap$LandscapeBanner;->changeOverlayPosition(I)V

    return-void
.end method

.method public changeLargeBannerOverlayPositionForJS(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DTViewConfig;->decodePositionFromString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/directtap/DirectTap$LargeBanner;->changeOverlayPosition(I)V

    return-void
.end method

.method public dismissBannerForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$Banner;->dismissOverlay()V

    return-void
.end method

.method public dismissFinishScreenForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$FullScreen;->dismiss()V

    return-void
.end method

.method public dismissFullScreenForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$FullScreen;->dismiss()V

    return-void
.end method

.method public dismissIconForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$Icon;->dismissOverlay()V

    return-void
.end method

.method public dismissLandscapeBannerForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$LandscapeBanner;->dismissOverlay()V

    return-void
.end method

.method public dismissLargeBannerForJS()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/directtap/DirectTap$LargeBanner;->dismissOverlay()V

    return-void
.end method

.method public makeBannerOverlayVisibleForJS(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DirectTap$Banner;->makeOverlayVisible(Z)V

    return-void
.end method

.method public makeIconOverlayVisibleForJS(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DirectTap$Icon;->makeOverlayVisible(Z)V

    return-void
.end method

.method public makeLandscapeBannerOverlayVisibleForJS(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DirectTap$LandscapeBanner;->makeOverlayVisible(Z)V

    return-void
.end method

.method public makeLargeBannerOverlayVisibleForJS(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/directtap/DirectTap$LargeBanner;->makeOverlayVisible(Z)V

    return-void
.end method

.method public refreshBannerForJS()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/directtap/DirectTap$Banner;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public refreshIconForJS()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/directtap/DirectTap$Icon;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public refreshLandscapeBannerForJS()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/directtap/DirectTap$LandscapeBanner;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public refreshLargeBannerForJS()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/directtap/DirectTap$LargeBanner;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public showBannerForJS(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/directtap/DTViewConfig;->setFromJSONString(ILjava/lang/String;)V

    new-instance v1, Lcom/directtap/DirectTap$Banner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/directtap/DirectTap$Banner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/directtap/DirectTap$Banner;->a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$BannerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$BannerBase;->showOverlay()V

    return-void
.end method

.method public showFinishScreenForJS(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DirectTap$FinishScreen;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/directtap/DirectTap$FinishScreen;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/directtap/DirectTap$FinishScreen;->setNoWait(Z)Lcom/directtap/DirectTap$FinishScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$FinishScreen;->show()V

    return-void
.end method

.method public showFullScreenForJS(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DirectTap$FullScreen;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/directtap/DirectTap$FullScreen;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/directtap/DirectTap$FullScreen;->setNoWait(Z)Lcom/directtap/DirectTap$FullScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$FullScreen;->show()V

    return-void
.end method

.method public showIconForJS(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/directtap/DTViewConfig;->setFromJSONString(ILjava/lang/String;)V

    new-instance v1, Lcom/directtap/DirectTap$Icon;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/directtap/DirectTap$Icon;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/directtap/DirectTap$Icon;->a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$Icon;->showOverlay()V

    return-void
.end method

.method public showLandscapeBannerForJS(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/directtap/DTViewConfig;->setFromJSONString(ILjava/lang/String;)V

    new-instance v1, Lcom/directtap/DirectTap$LandscapeBanner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/directtap/DirectTap$LandscapeBanner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/directtap/DirectTap$LandscapeBanner;->a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$BannerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$BannerBase;->showOverlay()V

    return-void
.end method

.method public showLargeBannerForJS(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/directtap/DTViewConfig;->setFromJSONString(ILjava/lang/String;)V

    new-instance v1, Lcom/directtap/DirectTap$LargeBanner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/directtap/DirectTap$LargeBanner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/directtap/DirectTap$LargeBanner;->a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$BannerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/DirectTap$BannerBase;->showOverlay()V

    return-void
.end method
