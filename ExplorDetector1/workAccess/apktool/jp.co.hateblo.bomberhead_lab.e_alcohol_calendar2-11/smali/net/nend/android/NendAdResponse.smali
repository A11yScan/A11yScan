.class final Lnet/nend/android/NendAdResponse;
.super Ljava/lang/Object;
.source "NendAdResponse.java"

# interfaces
.implements Lnet/nend/android/AdParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nend/android/NendAdResponse$Builder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I


# instance fields
.field private final mClickUrl:Ljava/lang/String;

.field private final mHeight:I

.field private final mImageUrl:Ljava/lang/String;

.field private final mReloadIntervalInSeconds:I

.field private final mViewType:Lnet/nend/android/AdParameter$ViewType;

.field private final mWebViewUrl:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lnet/nend/android/NendAdResponse;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/nend/android/AdParameter$ViewType;->values()[Lnet/nend/android/AdParameter$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/nend/android/NendAdResponse;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lnet/nend/android/NendAdResponse$Builder;)V
    .locals 3
    .param p1, "builder"    # Lnet/nend/android/NendAdResponse$Builder;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lnet/nend/android/NendAdResponse;->$SWITCH_TABLE$net$nend$android$AdParameter$ViewType()[I

    move-result-object v0

    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$0(Lnet/nend/android/NendAdResponse$Builder;)Lnet/nend/android/AdParameter$ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/nend/android/AdParameter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uknown view type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$1(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$1(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image url is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$2(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$2(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Click url is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAdResponse;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 106
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$1(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse;->mImageUrl:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$2(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse;->mClickUrl:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lnet/nend/android/NendAdResponse;->mWebViewUrl:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$3(Lnet/nend/android/NendAdResponse$Builder;)I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mReloadIntervalInSeconds:I

    .line 110
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$4(Lnet/nend/android/NendAdResponse$Builder;)I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mHeight:I

    .line 111
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$5(Lnet/nend/android/NendAdResponse$Builder;)I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mWidth:I

    .line 132
    :goto_0
    return-void

    .line 116
    :pswitch_1
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$6(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$6(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Web view url is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_5
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    iput-object v0, p0, Lnet/nend/android/NendAdResponse;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    .line 121
    iput-object v2, p0, Lnet/nend/android/NendAdResponse;->mImageUrl:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lnet/nend/android/NendAdResponse;->mClickUrl:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$6(Lnet/nend/android/NendAdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/nend/android/NendAdResponse;->mWebViewUrl:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mReloadIntervalInSeconds:I

    .line 125
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$4(Lnet/nend/android/NendAdResponse$Builder;)I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mHeight:I

    .line 126
    invoke-static {p1}, Lnet/nend/android/NendAdResponse$Builder;->access$5(Lnet/nend/android/NendAdResponse$Builder;)I

    move-result v0

    iput v0, p0, Lnet/nend/android/NendAdResponse;->mWidth:I

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Lnet/nend/android/NendAdResponse$Builder;Lnet/nend/android/NendAdResponse;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/nend/android/NendAdResponse;-><init>(Lnet/nend/android/NendAdResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lnet/nend/android/NendAdResponse;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lnet/nend/android/NendAdResponse;->mHeight:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnet/nend/android/NendAdResponse;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReloadIntervalInSeconds()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lnet/nend/android/NendAdResponse;->mReloadIntervalInSeconds:I

    return v0
.end method

.method public getViewType()Lnet/nend/android/AdParameter$ViewType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/nend/android/NendAdResponse;->mViewType:Lnet/nend/android/AdParameter$ViewType;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lnet/nend/android/NendAdResponse;->mWebViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lnet/nend/android/NendAdResponse;->mWidth:I

    return v0
.end method
