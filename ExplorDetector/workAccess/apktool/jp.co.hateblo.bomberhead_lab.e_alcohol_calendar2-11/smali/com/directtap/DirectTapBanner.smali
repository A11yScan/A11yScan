.class public Lcom/directtap/DirectTapBanner;
.super Lcom/directtap/r;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/directtap/DTViewConfig;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/directtap/r;-><init>(Landroid/app/Activity;Lcom/directtap/DTViewConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/directtap/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Lcom/directtap/r;->release()V

    return-void
.end method
