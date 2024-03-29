.class public final enum Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;
.super Ljava/lang/Enum;
.source "BeadDialogStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/BeadDialogStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdDialogLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CancelButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

.field public static final enum ClickAppButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

.field public static final enum ClickWebButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

.field public static final enum QuitButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

.field public static final enum QuitText:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    const-string v1, "QuitButton"

    invoke-direct {v0, v1, v2}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .line 24
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    const-string v1, "CancelButton"

    invoke-direct {v0, v1, v3}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->CancelButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .line 26
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    const-string v1, "ClickAppButton"

    invoke-direct {v0, v1, v4}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .line 28
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    const-string v1, "ClickWebButton"

    invoke-direct {v0, v1, v5}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .line 30
    new-instance v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    const-string v1, "QuitText"

    invoke-direct {v0, v1, v6}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitText:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->CancelButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickAppButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    aput-object v1, v0, v4

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ClickWebButton:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    aput-object v1, v0, v5

    sget-object v1, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->QuitText:Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    aput-object v1, v0, v6

    sput-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    return-object v0
.end method

.method public static values()[Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ENUM$VALUES:[Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
