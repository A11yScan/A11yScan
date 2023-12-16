.class final Lnet/nend/android/NendException;
.super Ljava/lang/Exception;
.source "NendException.java"


# static fields
.field private static final serialVersionUID:J = -0x115ac0ed1ada4c91L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method constructor <init>(Lnet/nend/android/NendStatus;)V
    .locals 1
    .param p1, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 35
    invoke-virtual {p1}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/nend/android/NendException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lnet/nend/android/NendStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lnet/nend/android/NendStatus;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/nend/android/NendException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
