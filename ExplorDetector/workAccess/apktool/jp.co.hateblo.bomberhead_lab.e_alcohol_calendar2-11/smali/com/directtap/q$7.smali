.class final Lcom/directtap/q$7;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/q;->d(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:J


# direct methods
.method constructor <init>(ILandroid/app/Activity;J)V
    .locals 0

    iput p1, p0, Lcom/directtap/q$7;->a:I

    iput-object p2, p0, Lcom/directtap/q$7;->b:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/directtap/q$7;->c:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-class v0, Lcom/directtap/t;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer time over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/directtap/q$7;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> delayed call to prepare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/directtap/q;->h()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/directtap/q$7;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/directtap/q$7;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/directtap/q$7;->a:I

    iget-wide v2, p0, Lcom/directtap/q$7;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/directtap/q;->a(Landroid/app/Activity;IJ)V

    return-void
.end method
