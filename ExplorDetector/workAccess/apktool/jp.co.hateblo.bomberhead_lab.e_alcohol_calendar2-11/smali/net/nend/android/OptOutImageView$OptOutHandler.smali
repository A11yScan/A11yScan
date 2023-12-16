.class Lnet/nend/android/OptOutImageView$OptOutHandler;
.super Landroid/os/Handler;
.source "OptOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/OptOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptOutHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/nend/android/OptOutImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lnet/nend/android/OptOutImageView;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "view"    # Lnet/nend/android/OptOutImageView;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/nend/android/OptOutImageView$OptOutHandler;->weakReference:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    iget-object v1, p0, Lnet/nend/android/OptOutImageView$OptOutHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/OptOutImageView;

    .line 55
    .local v0, "view":Lnet/nend/android/OptOutImageView;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lnet/nend/android/OptOutImageView;->scrollRight()V

    .line 58
    :cond_0
    return-void
.end method
