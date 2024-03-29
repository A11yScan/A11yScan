.class La2dp/Vol/service$14;
.super Ljava/lang/Object;
.source "service.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/service;


# direct methods
.method constructor <init>(La2dp/Vol/service;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/service;

    .prologue
    .line 1446
    iput-object p1, p0, La2dp/Vol/service$14;->this$0:La2dp/Vol/service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1450
    if-nez p1, :cond_0

    .line 1451
    const/4 v0, 0x1

    sput-boolean v0, La2dp/Vol/service;->mTtsReady:Z

    .line 1452
    iget-object v0, p0, La2dp/Vol/service$14;->this$0:La2dp/Vol/service;

    invoke-static {v0}, La2dp/Vol/service;->access$1100(La2dp/Vol/service;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, La2dp/Vol/service$14;->this$0:La2dp/Vol/service;

    iget-object v1, v1, La2dp/Vol/service;->ul:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 1454
    :cond_0
    return-void
.end method
