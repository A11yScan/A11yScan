.class final Lnet/nend/android/NendAdWebView;
.super Landroid/webkit/WebView;
.source "NendAdWebView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lnet/nend/android/NendAdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/nend/android/NendAdWebView;->setBackgroundColor(I)V

    .line 21
    return-void
.end method
