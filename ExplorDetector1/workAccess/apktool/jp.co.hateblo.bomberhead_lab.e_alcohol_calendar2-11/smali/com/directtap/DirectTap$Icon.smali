.class public final Lcom/directtap/DirectTap$Icon;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/DirectTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Icon"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/directtap/DTViewConfig;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/directtap/DirectTap$Icon;->a:Landroid/app/Activity;

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/directtap/DTViewConfig;-><init>(Lcom/directtap/DTViewConfig;)V

    iput-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    iput-object p1, p0, Lcom/directtap/DirectTap$Icon;->a:Landroid/app/Activity;

    return-void
.end method

.method public static changeOverlayPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(II)V

    return-void
.end method

.method public static dismissOverlay()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(I)V

    return-void
.end method

.method public static load(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/directtap/o;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static makeOverlayVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(IZ)V

    return-void
.end method

.method public static refresh(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(ILandroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/directtap/DTViewConfig;)Lcom/directtap/DirectTap$Icon;
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    return-object p0
.end method

.method public build()Lcom/directtap/DirectTapIcon;
    .locals 3

    new-instance v0, Lcom/directtap/DirectTapIcon;

    iget-object v1, p0, Lcom/directtap/DirectTap$Icon;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-direct {v0, v1, v2}, Lcom/directtap/DirectTapIcon;-><init>(Landroid/app/Activity;Lcom/directtap/DTViewConfig;)V

    return-object v0
.end method

.method public setIconNumber(I)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconNumber(I)V

    return-object p0
.end method

.method public setIconOrientation(I)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V

    return-object p0
.end method

.method public setIconPosition(I)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconPosition(I)V

    return-object p0
.end method

.method public setIconSize(I)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconSize(I)V

    return-object p0
.end method

.method public setLoadOnCreate(Z)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setLoadContent(Z)V

    return-object p0
.end method

.method public setRefreshTimeInterval(J)Lcom/directtap/DirectTap$Icon;
    .locals 2

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/directtap/DTViewConfig;->setRefreshTimeInterval(IJ)V

    return-object p0
.end method

.method public setReleaseOnDetached(Z)Lcom/directtap/DirectTap$Icon;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setReleaseOnDetached(Z)V

    return-object p0
.end method

.method public showOverlay()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/directtap/DirectTap$Icon;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/directtap/DirectTap$Icon;->b:Lcom/directtap/DTViewConfig;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/directtap/DirectTap;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V

    return-void
.end method
