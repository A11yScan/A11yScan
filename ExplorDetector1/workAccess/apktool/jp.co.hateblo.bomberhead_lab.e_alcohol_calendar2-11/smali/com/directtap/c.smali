.class final Lcom/directtap/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "_debug_only"

.field private static final b:J = 0x3e8L

.field private static c:Lcom/directtap/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/directtap/d;)V
    .locals 0

    sput-object p0, Lcom/directtap/c;->c:Lcom/directtap/d;

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/directtap/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "_debug_only"

    invoke-static {v0}, Lcom/directtap/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TIMER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    invoke-static {p0, v2}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/directtap/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "_debug_only"

    invoke-static {v0}, Lcom/directtap/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/directtap/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/directtap/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/directtap/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/directtap/c;->c:Lcom/directtap/d;

    invoke-interface {v0}, Lcom/directtap/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
