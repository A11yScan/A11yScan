.class La2dp/Vol/AppChooser$7;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 195
    iput-object p1, p0, La2dp/Vol/AppChooser$7;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, La2dp/Vol/AppChooser$7;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v0}, La2dp/Vol/AppChooser;->access$700(La2dp/Vol/AppChooser;)V

    .line 199
    iget-object v0, p0, La2dp/Vol/AppChooser$7;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v0}, La2dp/Vol/AppChooser;->access$800(La2dp/Vol/AppChooser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    return-void
.end method
