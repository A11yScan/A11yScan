.class public Ljp/maru/mrd/IconLoader$URLOpenerImpl;
.super Ljava/lang/Object;
.source "IconLoader.java"

# interfaces
.implements Ljp/maru/mrd/IconLoader$URLOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/maru/mrd/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "URLOpenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljp/maru/mrd/IconLoader$URLOpener;"
    }
.end annotation


# instance fields
.field private final _iconLoader:Ljp/maru/mrd/IconLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/maru/mrd/IconLoader",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljp/maru/mrd/IconLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Ljp/maru/mrd/IconLoader$URLOpenerImpl;, "Ljp/maru/mrd/IconLoader<TT;>.URLOpenerImpl<TU;>;"
    .local p1, "iconLoader":Ljp/maru/mrd/IconLoader;, "Ljp/maru/mrd/IconLoader<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p1, p0, Ljp/maru/mrd/IconLoader$URLOpenerImpl;->_iconLoader:Ljp/maru/mrd/IconLoader;

    .line 879
    return-void
.end method


# virtual methods
.method public openURL(Ljava/lang/String;)V
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 884
    .local p0, "this":Ljp/maru/mrd/IconLoader$URLOpenerImpl;, "Ljp/maru/mrd/IconLoader<TT;>.URLOpenerImpl<TU;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 885
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 886
    iget-object v2, p0, Ljp/maru/mrd/IconLoader$URLOpenerImpl;->_iconLoader:Ljp/maru/mrd/IconLoader;

    invoke-static {v2}, Ljp/maru/mrd/IconLoader;->access$5(Ljp/maru/mrd/IconLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v2, "mrd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not opwn url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
