.class La2dp/Vol/AppChooser$1;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method constructor <init>(La2dp/Vol/AppChooser;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 48
    iput-object p1, p0, La2dp/Vol/AppChooser$1;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, La2dp/Vol/AppChooser$1;->this$0:La2dp/Vol/AppChooser;

    invoke-virtual {v0}, La2dp/Vol/AppChooser;->doListFilter()V

    .line 52
    return-void
.end method
