.class La2dp/Vol/EditDevice$5;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/EditDevice;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 278
    iput-object p1, p0, La2dp/Vol/EditDevice$5;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, La2dp/Vol/EditDevice$5;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v0}, La2dp/Vol/EditDevice;->access$400(La2dp/Vol/EditDevice;)V

    .line 282
    iget-object v0, p0, La2dp/Vol/EditDevice$5;->this$0:La2dp/Vol/EditDevice;

    invoke-virtual {v0}, La2dp/Vol/EditDevice;->finish()V

    .line 283
    return-void
.end method
