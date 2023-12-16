.class La2dp/Vol/AppChooser$4;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 72
    iput-object p1, p0, La2dp/Vol/AppChooser$4;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "keycode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 76
    iget-object v0, p0, La2dp/Vol/AppChooser$4;->this$0:La2dp/Vol/AppChooser;

    invoke-virtual {v0}, La2dp/Vol/AppChooser;->doListFilter()V

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
