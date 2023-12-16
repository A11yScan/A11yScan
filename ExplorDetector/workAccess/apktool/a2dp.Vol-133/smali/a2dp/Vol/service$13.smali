.class La2dp/Vol/service$13;
.super Landroid/os/CountDownTimer;
.source "service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/service;->TextReader(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/service;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(La2dp/Vol/service;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1421
    iput-object p1, p0, La2dp/Vol/service$13;->this$0:La2dp/Vol/service;

    iput-object p6, p0, La2dp/Vol/service$13;->val$str:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1426
    :try_start_0
    iget-object v1, p0, La2dp/Vol/service$13;->this$0:La2dp/Vol/service;

    invoke-static {v1}, La2dp/Vol/service;->access$1100(La2dp/Vol/service;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, La2dp/Vol/service$13;->val$str:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, La2dp/Vol/service$13;->this$0:La2dp/Vol/service;

    iget-object v4, v4, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_0
    return-void

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v1

    const v2, 0x7f070055

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1429
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 1438
    return-void
.end method
