.class public final Lcom/directtap/DirectTap$Banner;
.super Lcom/directtap/DirectTap$BannerBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/DirectTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Banner"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/directtap/DirectTap$BannerBase;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/directtap/DirectTap$Banner;->a:I

    return-void
.end method

.method public static changeOverlayPosition(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(II)V

    return-void
.end method

.method public static dismissOverlay()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(I)V

    return-void
.end method

.method public static load(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/directtap/o;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static makeOverlayVisible(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(IZ)V

    return-void
.end method

.method public static refresh(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/directtap/DirectTap;->a(ILandroid/app/Activity;)V

    return-void
.end method
