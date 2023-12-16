.class final enum Ljp/beyond/bead/BeadDialogStrings$Language;
.super Ljava/lang/Enum;
.source "BeadDialogStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/BeadDialogStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/bead/BeadDialogStrings$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$Language;

.field public static final enum En:Ljp/beyond/bead/BeadDialogStrings$Language;

.field public static final enum Ja:Ljp/beyond/bead/BeadDialogStrings$Language;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$Language;

    const-string v1, "Ja"

    invoke-direct {v0, v1, v2}, Ljp/beyond/bead/BeadDialogStrings$Language;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$Language;->Ja:Ljp/beyond/bead/BeadDialogStrings$Language;

    .line 16
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$Language;

    const-string v1, "En"

    invoke-direct {v0, v1, v3}, Ljp/beyond/bead/BeadDialogStrings$Language;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$Language;->En:Ljp/beyond/bead/BeadDialogStrings$Language;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljp/beyond/bead/BeadDialogStrings$Language;

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$Language;->Ja:Ljp/beyond/bead/BeadDialogStrings$Language;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$Language;->En:Ljp/beyond/bead/BeadDialogStrings$Language;

    aput-object v1, v0, v3

    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$Language;->ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/bead/BeadDialogStrings$Language;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/bead/BeadDialogStrings$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/bead/BeadDialogStrings$Language;

    return-object v0
.end method

.method public static values()[Ljp/beyond/bead/BeadDialogStrings$Language;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/bead/BeadDialogStrings$Language;->ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$Language;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/bead/BeadDialogStrings$Language;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
