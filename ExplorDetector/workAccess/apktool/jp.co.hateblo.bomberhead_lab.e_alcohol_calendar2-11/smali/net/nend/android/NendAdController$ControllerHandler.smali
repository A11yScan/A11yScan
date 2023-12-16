.class Lnet/nend/android/NendAdController$ControllerHandler;
.super Landroid/os/Handler;
.source "NendAdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/nend/android/Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lnet/nend/android/Ad;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "ad"    # Lnet/nend/android/Ad;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/nend/android/NendAdController$ControllerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 28
    iget-object v1, p0, Lnet/nend/android/NendAdController$ControllerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/Ad;

    .line 29
    .local v0, "ad":Lnet/nend/android/Ad;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lnet/nend/android/Ad;->requestAd()Z

    .line 35
    :cond_0
    return-void
.end method
