.class La2dp/Vol/AppChooser$3;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 64
    iput-object p1, p0, La2dp/Vol/AppChooser$3;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    iget-object v0, p0, La2dp/Vol/AppChooser$3;->this$0:La2dp/Vol/AppChooser;

    invoke-virtual {v0}, La2dp/Vol/AppChooser;->doListFilter()V

    .line 68
    const/4 v0, 0x0

    return v0
.end method
