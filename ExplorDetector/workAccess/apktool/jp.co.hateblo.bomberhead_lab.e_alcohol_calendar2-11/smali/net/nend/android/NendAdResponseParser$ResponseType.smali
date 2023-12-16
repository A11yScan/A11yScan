.class final enum Lnet/nend/android/NendAdResponseParser$ResponseType;
.super Ljava/lang/Enum;
.source "NendAdResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendAdResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/NendAdResponseParser$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_TARGETING:Lnet/nend/android/NendAdResponseParser$ResponseType;

.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/NendAdResponseParser$ResponseType;

.field public static final enum NORMAL:Lnet/nend/android/NendAdResponseParser$ResponseType;

.field public static final enum UNSUPPORTED:Lnet/nend/android/NendAdResponseParser$ResponseType;

.field public static final enum WEB_VIEW:Lnet/nend/android/NendAdResponseParser$ResponseType;

.field private static final intToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lnet/nend/android/NendAdResponseParser$ResponseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 62
    new-instance v2, Lnet/nend/android/NendAdResponseParser$ResponseType;

    const-string v3, "UNSUPPORTED"

    invoke-direct {v2, v3, v1, v1}, Lnet/nend/android/NendAdResponseParser$ResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->UNSUPPORTED:Lnet/nend/android/NendAdResponseParser$ResponseType;

    .line 63
    new-instance v2, Lnet/nend/android/NendAdResponseParser$ResponseType;

    const-string v3, "NORMAL"

    invoke-direct {v2, v3, v4, v4}, Lnet/nend/android/NendAdResponseParser$ResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->NORMAL:Lnet/nend/android/NendAdResponseParser$ResponseType;

    .line 64
    new-instance v2, Lnet/nend/android/NendAdResponseParser$ResponseType;

    const-string v3, "WEB_VIEW"

    invoke-direct {v2, v3, v5, v5}, Lnet/nend/android/NendAdResponseParser$ResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->WEB_VIEW:Lnet/nend/android/NendAdResponseParser$ResponseType;

    .line 65
    new-instance v2, Lnet/nend/android/NendAdResponseParser$ResponseType;

    const-string v3, "APP_TARGETING"

    invoke-direct {v2, v3, v6, v6}, Lnet/nend/android/NendAdResponseParser$ResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->APP_TARGETING:Lnet/nend/android/NendAdResponseParser$ResponseType;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/nend/android/NendAdResponseParser$ResponseType;

    sget-object v3, Lnet/nend/android/NendAdResponseParser$ResponseType;->UNSUPPORTED:Lnet/nend/android/NendAdResponseParser$ResponseType;

    aput-object v3, v2, v1

    sget-object v3, Lnet/nend/android/NendAdResponseParser$ResponseType;->NORMAL:Lnet/nend/android/NendAdResponseParser$ResponseType;

    aput-object v3, v2, v4

    sget-object v3, Lnet/nend/android/NendAdResponseParser$ResponseType;->WEB_VIEW:Lnet/nend/android/NendAdResponseParser$ResponseType;

    aput-object v3, v2, v5

    sget-object v3, Lnet/nend/android/NendAdResponseParser$ResponseType;->APP_TARGETING:Lnet/nend/android/NendAdResponseParser$ResponseType;

    aput-object v3, v2, v6

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->ENUM$VALUES:[Lnet/nend/android/NendAdResponseParser$ResponseType;

    .line 67
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lnet/nend/android/NendAdResponseParser$ResponseType;->intToEnum:Landroid/util/SparseArray;

    .line 74
    invoke-static {}, Lnet/nend/android/NendAdResponseParser$ResponseType;->values()[Lnet/nend/android/NendAdResponseParser$ResponseType;

    move-result-object v2

    array-length v3, v2

    .local v0, "responseType":Lnet/nend/android/NendAdResponseParser$ResponseType;
    :goto_0
    if-lt v1, v3, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    aget-object v0, v2, v1

    .line 75
    sget-object v4, Lnet/nend/android/NendAdResponseParser$ResponseType;->intToEnum:Landroid/util/SparseArray;

    iget v5, v0, Lnet/nend/android/NendAdResponseParser$ResponseType;->type:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lnet/nend/android/NendAdResponseParser$ResponseType;->type:I

    .line 81
    return-void
.end method

.method static synthetic access$2(I)Lnet/nend/android/NendAdResponseParser$ResponseType;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lnet/nend/android/NendAdResponseParser$ResponseType;->valueOf(I)Lnet/nend/android/NendAdResponseParser$ResponseType;

    move-result-object v0

    return-object v0
.end method

.method private static valueOf(I)Lnet/nend/android/NendAdResponseParser$ResponseType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 90
    sget-object v0, Lnet/nend/android/NendAdResponseParser$ResponseType;->intToEnum:Landroid/util/SparseArray;

    sget-object v1, Lnet/nend/android/NendAdResponseParser$ResponseType;->UNSUPPORTED:Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendAdResponseParser$ResponseType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/NendAdResponseParser$ResponseType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendAdResponseParser$ResponseType;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/NendAdResponseParser$ResponseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/NendAdResponseParser$ResponseType;->ENUM$VALUES:[Lnet/nend/android/NendAdResponseParser$ResponseType;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/NendAdResponseParser$ResponseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
