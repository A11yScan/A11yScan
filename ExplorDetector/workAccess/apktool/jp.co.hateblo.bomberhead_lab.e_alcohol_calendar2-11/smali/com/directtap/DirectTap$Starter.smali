.class public final Lcom/directtap/DirectTap$Starter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/DirectTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Starter"
.end annotation


# static fields
.field public static final ORIENTATION_AUTO:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x3

.field public static final ORIENTATION_PORTRAIT:I = 0x2


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/directtap/DTViewConfig;

.field private d:Landroid/webkit/WebView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/directtap/DirectTap$Starter;->a:Landroid/app/Activity;

    iput-object v1, p0, Lcom/directtap/DirectTap$Starter;->b:Ljava/lang/String;

    new-instance v0, Lcom/directtap/DTViewConfig;

    invoke-direct {v0}, Lcom/directtap/DTViewConfig;-><init>()V

    iput-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    iput-object v1, p0, Lcom/directtap/DirectTap$Starter;->d:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/directtap/DirectTap$Starter;->e:Z

    iput-object p1, p0, Lcom/directtap/DirectTap$Starter;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/directtap/DirectTap$Starter;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setFullScreenOrientation(I)Lcom/directtap/DirectTap$Starter;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setFullScreenOrientation(I)V

    return-object p0
.end method

.method public setIconNumber(I)Lcom/directtap/DirectTap$Starter;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconNumber(I)V

    return-object p0
.end method

.method public setIconOrientation(I)Lcom/directtap/DirectTap$Starter;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconOrientation(I)V

    return-object p0
.end method

.method public setIconPosition(I)Lcom/directtap/DirectTap$Starter;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconPosition(I)V

    return-object p0
.end method

.method public setIconSize(I)Lcom/directtap/DirectTap$Starter;
    .locals 1

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-virtual {v0, p1}, Lcom/directtap/DTViewConfig;->setIconSize(I)V

    return-object p0
.end method

.method public setInterfaceForThisWebView(Landroid/webkit/WebView;)Lcom/directtap/DirectTap$Starter;
    .locals 0

    iput-object p1, p0, Lcom/directtap/DirectTap$Starter;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method public setTestMode(Z)Lcom/directtap/DirectTap$Starter;
    .locals 0

    iput-boolean p1, p0, Lcom/directtap/DirectTap$Starter;->e:Z

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "The Activity instance passed when initializing Starter cannot be null"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "The application code passed when initializing Starter cannot be null"

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/directtap/DirectTap$Starter;->e:Z

    invoke-static {v0}, Lcom/directtap/n;->a(Z)V

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->c:Lcom/directtap/DTViewConfig;

    invoke-static {v0}, Lcom/directtap/q;->a(Lcom/directtap/DTViewConfig;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->d:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/directtap/DirectTap;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/directtap/DirectTap$Starter;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/directtap/DirectTap$Starter;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/directtap/DirectTap$Starter;->e:Z

    invoke-static {v0, v1, v2}, Lcom/directtap/DirectTap;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method
