.class La2dp/Vol/main$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/main;


# direct methods
.method constructor <init>(La2dp/Vol/main;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/main;

    .prologue
    .line 124
    iput-object p1, p0, La2dp/Vol/main$2;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 127
    iget-object v0, p0, La2dp/Vol/main$2;->this$0:La2dp/Vol/main;

    invoke-static {v0}, La2dp/Vol/main;->access$000(La2dp/Vol/main;)La2dp/Vol/DeviceDB;

    move-result-object v0

    invoke-virtual {v0}, La2dp/Vol/DeviceDB;->deleteAll()V

    .line 128
    iget-object v0, p0, La2dp/Vol/main$2;->this$0:La2dp/Vol/main;

    iget-object v1, p0, La2dp/Vol/main$2;->this$0:La2dp/Vol/main;

    invoke-static {v1}, La2dp/Vol/main;->access$100(La2dp/Vol/main;)I

    move-result v1

    invoke-static {v0, v1}, La2dp/Vol/main;->access$200(La2dp/Vol/main;I)V

    .line 129
    return-void
.end method
