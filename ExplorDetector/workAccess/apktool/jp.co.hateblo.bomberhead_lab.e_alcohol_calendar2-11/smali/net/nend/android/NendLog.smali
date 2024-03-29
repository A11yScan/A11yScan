.class final Lnet/nend/android/NendLog;
.super Ljava/lang/Object;
.source "NendLog.java"


# static fields
.field static final TAG:Ljava/lang/String; = "nend_SDK"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x3

    const-string v1, "nend_SDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    const/4 v0, 0x3

    const-string v1, "nend_SDK"

    invoke-static {v0, v1, p0, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Lnet/nend/android/NendStatus;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 95
    const/4 v0, 0x3

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Lnet/nend/android/NendStatus;Ljava/lang/String;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x3

    const-string v1, "nend_SDK"

    invoke-virtual {p0, p1}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static d(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    const/4 v0, 0x3

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x6

    const-string v1, "nend_SDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    const/4 v0, 0x6

    const-string v1, "nend_SDK"

    invoke-static {v0, v1, p0, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Lnet/nend/android/NendStatus;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 179
    const/4 v0, 0x6

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Lnet/nend/android/NendStatus;Ljava/lang/String;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x6

    const-string v1, "nend_SDK"

    invoke-virtual {p0, p1}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static e(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    const/4 v0, 0x6

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x4

    const-string v1, "nend_SDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    const/4 v0, 0x4

    const-string v1, "nend_SDK"

    invoke-static {v0, v1, p0, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Lnet/nend/android/NendStatus;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 123
    const/4 v0, 0x4

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Lnet/nend/android/NendStatus;Ljava/lang/String;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x4

    const-string v1, "nend_SDK"

    invoke-virtual {p0, p1}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    const/4 v0, 0x4

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lnet/nend/android/NendHelper;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 26
    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/nend/android/NendHelper;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/nend/android/NendHelper;->isDev()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 28
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-static {p1, p0}, Lnet/nend/android/NendLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v1, v2, v3

    .line 40
    .local v1, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "fixedMsg":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 47
    .end local v0    # "fixedMsg":Ljava/lang/String;
    .end local v1    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static v(Ljava/lang/String;)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x2

    const-string v1, "nend_SDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    const/4 v0, 0x2

    const-string v1, "nend_SDK"

    invoke-static {v0, v1, p0, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Lnet/nend/android/NendStatus;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 67
    const/4 v0, 0x2

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Lnet/nend/android/NendStatus;Ljava/lang/String;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x2

    const-string v1, "nend_SDK"

    invoke-virtual {p0, p1}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static v(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, 0x2

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;)I
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x5

    const-string v1, "nend_SDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    const/4 v0, 0x5

    const-string v1, "nend_SDK"

    invoke-static {v0, v1, p0, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Lnet/nend/android/NendStatus;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;

    .prologue
    .line 151
    const/4 v0, 0x5

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Lnet/nend/android/NendStatus;Ljava/lang/String;)I
    .locals 4
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x5

    const-string v1, "nend_SDK"

    invoke-virtual {p0, p1}, Lnet/nend/android/NendStatus;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Lnet/nend/android/NendStatus;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "status"    # Lnet/nend/android/NendStatus;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    const/4 v0, 0x5

    const-string v1, "nend_SDK"

    invoke-virtual {p0}, Lnet/nend/android/NendStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lnet/nend/android/NendLog;->outputLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
