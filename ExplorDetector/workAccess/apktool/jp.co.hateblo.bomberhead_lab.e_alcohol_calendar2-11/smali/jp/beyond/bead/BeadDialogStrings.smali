.class final Ljp/beyond/bead/BeadDialogStrings;
.super Ljava/lang/Object;
.source "BeadDialogStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;,
        Ljp/beyond/bead/BeadDialogStrings$Language;
    }
.end annotation


# static fields
.field private static final EXIT_AD_STRINGS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 37
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u30a2\u30d7\u30ea\u7d42\u4e86"

    aput-object v2, v1, v4

    const-string v2, "Exit"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 38
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    aput-object v2, v1, v4

    const-string v2, "Cancel"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 39
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9"

    aput-object v2, v1, v4

    const-string v2, "Download"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 40
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u3082\u3063\u3068\u898b\u308b"

    aput-object v3, v2, v4

    const-string v3, "Check!"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 41
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u30a2\u30d7\u30ea\u3092\u7d42\u4e86\u3057\u307e\u3059\u3002\n\u3088\u308d\u3057\u3044\u3067\u3059\u304b\uff1f"

    aput-object v3, v2, v4

    const-string v3, "Do you finish this application?"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Ljp/beyond/bead/BeadDialogStrings;->EXIT_AD_STRINGS:[[Ljava/lang/String;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getString(Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;)Ljava/lang/String;
    .locals 7
    .param p0, "adLabel"    # Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;

    .prologue
    .line 57
    const-string v3, ""

    .line 60
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljp/beyond/bead/BeadDialogStrings$AdDialogLabel;->ordinal()I

    move-result v0

    .line 62
    .local v0, "labelIndex":I
    sget-object v5, Ljp/beyond/bead/BeadDialogStrings;->EXIT_AD_STRINGS:[[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v0, 0x1

    if-ge v5, v6, :cond_0

    move-object v4, v3

    .line 78
    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 69
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljp/beyond/bead/BeadDialogStrings$Language;->En:Ljp/beyond/bead/BeadDialogStrings$Language;

    .line 71
    .local v2, "language":Ljp/beyond/bead/BeadDialogStrings$Language;
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    sget-object v2, Ljp/beyond/bead/BeadDialogStrings$Language;->Ja:Ljp/beyond/bead/BeadDialogStrings$Language;

    .line 75
    :cond_1
    invoke-virtual {v2}, Ljp/beyond/bead/BeadDialogStrings$Language;->ordinal()I

    move-result v1

    .line 77
    .local v1, "langIndex":I
    sget-object v5, Ljp/beyond/bead/BeadDialogStrings;->EXIT_AD_STRINGS:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v3, v5, v1

    move-object v4, v3

    .line 78
    .end local v3    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0
.end method
