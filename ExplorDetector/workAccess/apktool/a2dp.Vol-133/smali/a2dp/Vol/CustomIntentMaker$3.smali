.class La2dp/Vol/CustomIntentMaker$3;
.super Ljava/lang/Object;
.source "CustomIntentMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/CustomIntentMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/CustomIntentMaker;


# direct methods
.method constructor <init>(La2dp/Vol/CustomIntentMaker;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/CustomIntentMaker;

    .prologue
    .line 68
    iput-object p1, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 73
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-static {v6}, La2dp/Vol/CustomIntentMaker;->access$000(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-static {v6}, La2dp/Vol/CustomIntentMaker;->access$100(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "data":Ljava/lang/String;
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-static {v6}, La2dp/Vol/CustomIntentMaker;->access$200(La2dp/Vol/CustomIntentMaker;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    .line 129
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v2}, La2dp/Vol/CustomIntentMaker;->isShortcutIntent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    :try_start_0
    invoke-static {v2}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 105
    .local v4, "i":Landroid/content/Intent;
    :cond_1
    :goto_1
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-virtual {v6}, La2dp/Vol/CustomIntentMaker;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 107
    .local v1, "am":Landroid/media/AudioManager;
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 108
    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 109
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v1, v9, v6, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 122
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_2
    :try_start_1
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-virtual {v6, v4}, La2dp/Vol/CustomIntentMaker;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    iget-object v6, p0, La2dp/Vol/CustomIntentMaker$3;->this$0:La2dp/Vol/CustomIntentMaker;

    invoke-static {v6}, La2dp/Vol/CustomIntentMaker;->access$300(La2dp/Vol/CustomIntentMaker;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 83
    .end local v4    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/net/URISyntaxException;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 85
    .restart local v4    # "i":Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 89
    .restart local v4    # "i":Landroid/content/Intent;
    if-eqz v0, :cond_4

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 90
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_4
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 93
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    :cond_5
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 94
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 125
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
