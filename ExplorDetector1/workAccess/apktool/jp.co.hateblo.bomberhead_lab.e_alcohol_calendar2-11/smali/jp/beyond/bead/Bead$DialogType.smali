.class final enum Ljp/beyond/bead/Bead$DialogType;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/bead/Bead$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljp/beyond/bead/Bead$DialogType;

.field public static final enum Exit:Ljp/beyond/bead/Bead$DialogType;

.field public static final enum Optional:Ljp/beyond/bead/Bead$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Ljp/beyond/bead/Bead$DialogType;

    const-string v1, "Exit"

    invoke-direct {v0, v1, v2}, Ljp/beyond/bead/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Ljp/beyond/bead/Bead$DialogType;->Exit:Ljp/beyond/bead/Bead$DialogType;

    .line 47
    new-instance v0, Ljp/beyond/bead/Bead$DialogType;

    const-string v1, "Optional"

    invoke-direct {v0, v1, v3}, Ljp/beyond/bead/Bead$DialogType;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v0, Ljp/beyond/bead/Bead$DialogType;->Optional:Ljp/beyond/bead/Bead$DialogType;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljp/beyond/bead/Bead$DialogType;

    sget-object v1, Ljp/beyond/bead/Bead$DialogType;->Exit:Ljp/beyond/bead/Bead$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/bead/Bead$DialogType;->Optional:Ljp/beyond/bead/Bead$DialogType;

    aput-object v1, v0, v3

    sput-object v0, Ljp/beyond/bead/Bead$DialogType;->ENUM$VALUES:[Ljp/beyond/bead/Bead$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/bead/Bead$DialogType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/bead/Bead$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/bead/Bead$DialogType;

    return-object v0
.end method

.method public static values()[Ljp/beyond/bead/Bead$DialogType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/bead/Bead$DialogType;->ENUM$VALUES:[Ljp/beyond/bead/Bead$DialogType;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/bead/Bead$DialogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
