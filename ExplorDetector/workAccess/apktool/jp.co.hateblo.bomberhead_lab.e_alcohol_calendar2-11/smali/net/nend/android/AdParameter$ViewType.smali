.class public final enum Lnet/nend/android/AdParameter$ViewType;
.super Ljava/lang/Enum;
.source "AdParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/AdParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/AdParameter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVIEW:Lnet/nend/android/AdParameter$ViewType;

.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/AdParameter$ViewType;

.field public static final enum NONE:Lnet/nend/android/AdParameter$ViewType;

.field public static final enum WEBVIEW:Lnet/nend/android/AdParameter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lnet/nend/android/AdParameter$ViewType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lnet/nend/android/AdParameter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    .line 12
    new-instance v0, Lnet/nend/android/AdParameter$ViewType;

    const-string v1, "ADVIEW"

    invoke-direct {v0, v1, v3}, Lnet/nend/android/AdParameter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    .line 14
    new-instance v0, Lnet/nend/android/AdParameter$ViewType;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v4}, Lnet/nend/android/AdParameter$ViewType;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/nend/android/AdParameter$ViewType;

    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->NONE:Lnet/nend/android/AdParameter$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->ADVIEW:Lnet/nend/android/AdParameter$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/nend/android/AdParameter$ViewType;->WEBVIEW:Lnet/nend/android/AdParameter$ViewType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/nend/android/AdParameter$ViewType;->ENUM$VALUES:[Lnet/nend/android/AdParameter$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/AdParameter$ViewType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/AdParameter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/AdParameter$ViewType;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/AdParameter$ViewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/AdParameter$ViewType;->ENUM$VALUES:[Lnet/nend/android/AdParameter$ViewType;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/AdParameter$ViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
