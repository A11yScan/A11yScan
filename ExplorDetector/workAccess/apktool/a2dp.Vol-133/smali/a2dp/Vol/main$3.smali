.class La2dp/Vol/main$3;
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
    .line 286
    iput-object p1, p0, La2dp/Vol/main$3;->this$0:La2dp/Vol/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, La2dp/Vol/main$3;->this$0:La2dp/Vol/main;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La2dp/Vol/main;->access$300(La2dp/Vol/main;I)I

    .line 289
    return-void
.end method
