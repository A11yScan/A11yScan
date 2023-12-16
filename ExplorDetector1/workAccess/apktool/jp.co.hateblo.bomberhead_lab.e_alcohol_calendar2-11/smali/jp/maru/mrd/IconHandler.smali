.class public interface abstract Ljp/maru/mrd/IconHandler;
.super Ljava/lang/Object;
.source "IconHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract iconLoaderClearContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract iconLoaderDidFailToLoad(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract iconLoaderDidReceiveContent(Ljp/maru/mrd/IconLoader;Ljava/lang/Object;Ljp/maru/mrd/IconContent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/maru/mrd/IconLoader",
            "<TT;>;TT;",
            "Ljp/maru/mrd/IconContent;",
            ")V"
        }
    .end annotation
.end method
