.class La2dp/Vol/main$6;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/main;->onCreate(Landroid/os/Bundle;)V
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
    .line 431
    iput-object p1, p0, La2dp/Vol/main$6;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v0, p0, La2dp/Vol/main$6;->this$0:La2dp/Vol/main;

    invoke-virtual {v0}, La2dp/Vol/main;->Locationbtn()V

    .line 434
    return-void
.end method
