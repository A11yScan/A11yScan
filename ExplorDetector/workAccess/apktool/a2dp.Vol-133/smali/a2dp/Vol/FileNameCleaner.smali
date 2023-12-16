.class public La2dp/Vol/FileNameCleaner;
.super Ljava/lang/Object;
.source "FileNameCleaner.java"


# static fields
.field static final illegalChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, La2dp/Vol/FileNameCleaner;->illegalChars:[I

    .line 8
    sget-object v0, La2dp/Vol/FileNameCleaner;->illegalChars:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 9
    return-void

    .line 6
    nop

    :array_0
    .array-data 4
        0x22
        0x3c
        0x3e
        0x7c
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x3a
        0x2a
        0x3f
        0x5c
        0x2f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "badFileName"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .local v1, "cleanName":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    const-string v3, "bad_name"

    .line 19
    :goto_0
    return-object v3

    .line 13
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 15
    .local v0, "c":I
    sget-object v3, La2dp/Vol/FileNameCleaner;->illegalChars:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_1

    .line 16
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    .end local v0    # "c":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
