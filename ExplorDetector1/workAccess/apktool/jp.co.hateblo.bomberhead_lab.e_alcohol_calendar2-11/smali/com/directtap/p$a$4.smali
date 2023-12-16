.class Lcom/directtap/p$a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/directtap/p$a;->a(ILjava/util/List;Ljava/util/List;II)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/directtap/p$a;


# direct methods
.method constructor <init>(Lcom/directtap/p$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/directtap/p$a$4;->b:Lcom/directtap/p$a;

    iput p2, p0, Lcom/directtap/p$a$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/directtap/p$a$4;->b:Lcom/directtap/p$a;

    iget-object v0, v0, Lcom/directtap/p$a;->g:Lcom/directtap/p;

    iget v1, p0, Lcom/directtap/p$a$4;->a:I

    invoke-virtual {v0, v1}, Lcom/directtap/p;->a(I)V

    return-void
.end method
