.class Lcom/directtap/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/i;-><init>(Landroid/app/Activity;Lcom/directtap/k;Ljava/util/Map;Lcom/directtap/s;Lcom/directtap/DTViewConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/directtap/i;


# direct methods
.method constructor <init>(Lcom/directtap/i;)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/i$1;->a:Lcom/directtap/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/directtap/i$1;->a:Lcom/directtap/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catch the out of dialog click event"

    invoke-static {v0, v1}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/directtap/i$1;->a:Lcom/directtap/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/directtap/i;->a(I)V

    return-void
.end method
