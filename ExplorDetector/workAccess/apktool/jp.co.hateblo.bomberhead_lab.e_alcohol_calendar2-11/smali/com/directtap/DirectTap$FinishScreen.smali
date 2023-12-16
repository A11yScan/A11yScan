.class public final Lcom/directtap/DirectTap$FinishScreen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/DirectTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishScreen"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/directtap/DirectTapListener;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/directtap/DirectTap$FinishScreen;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/directtap/DirectTap$FinishScreen;->b:Lcom/directtap/DirectTapListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/directtap/DirectTap$FinishScreen;->c:Z

    iput-object p1, p0, Lcom/directtap/DirectTap$FinishScreen;->a:Landroid/app/Activity;

    return-void
.end method

.method public static dismiss()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(I)V

    return-void
.end method


# virtual methods
.method public setDirectTapListener(Lcom/directtap/DirectTapListener;)Lcom/directtap/DirectTap$FinishScreen;
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$FinishScreen;->b:Lcom/directtap/DirectTapListener;

    return-object p0
.end method

.method public setNoWait(Z)Lcom/directtap/DirectTap$FinishScreen;
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/DirectTap$FinishScreen;->c:Z

    return-object p0
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/directtap/DirectTap$FinishScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/directtap/DirectTap$FinishScreen;->b:Lcom/directtap/DirectTapListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/directtap/DirectTap$FinishScreen;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/directtap/DirectTap;->a(Landroid/app/Activity;ILcom/directtap/DirectTapListener;Lcom/directtap/DTViewConfig;ZZ)V

    return-void
.end method
