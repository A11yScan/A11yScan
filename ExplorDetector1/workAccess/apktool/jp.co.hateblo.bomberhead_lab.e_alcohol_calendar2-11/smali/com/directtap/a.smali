.class final Lcom/directtap/a;
.super Ljava/lang/Exception;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/directtap/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/directtap/a;->b:Z

    iput p2, p0, Lcom/directtap/a;->a:I

    iput-boolean p3, p0, Lcom/directtap/a;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/directtap/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/directtap/a;->b:Z

    iput-boolean p2, p0, Lcom/directtap/a;->b:Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcom/directtap/a;->a:I

    return v0
.end method

.method protected b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/directtap/a;->b:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/directtap/a;->a:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/directtap/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
