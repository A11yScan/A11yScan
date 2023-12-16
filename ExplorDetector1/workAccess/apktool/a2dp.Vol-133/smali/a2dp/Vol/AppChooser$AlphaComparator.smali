.class La2dp/Vol/AppChooser$AlphaComparator;
.super Ljava/lang/Object;
.source "AppChooser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "La2dp/Vol/AppChooser$AppInfoCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method constructor <init>(La2dp/Vol/AppChooser;)V
    .locals 1
    .param p1, "this$0"    # La2dp/Vol/AppChooser;

    .prologue
    .line 232
    iput-object p1, p0, La2dp/Vol/AppChooser$AlphaComparator;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/AppChooser$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(La2dp/Vol/AppChooser$AppInfoCache;La2dp/Vol/AppChooser$AppInfoCache;)I
    .locals 3
    .param p1, "a"    # La2dp/Vol/AppChooser$AppInfoCache;
    .param p2, "b"    # La2dp/Vol/AppChooser$AppInfoCache;

    .prologue
    .line 236
    invoke-virtual {p1}, La2dp/Vol/AppChooser$AppInfoCache;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "ainfo":Ljava/lang/String;
    invoke-virtual {p2}, La2dp/Vol/AppChooser$AppInfoCache;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "binfo":Ljava/lang/String;
    iget-object v2, p0, La2dp/Vol/AppChooser$AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 232
    check-cast p1, La2dp/Vol/AppChooser$AppInfoCache;

    check-cast p2, La2dp/Vol/AppChooser$AppInfoCache;

    invoke-virtual {p0, p1, p2}, La2dp/Vol/AppChooser$AlphaComparator;->compare(La2dp/Vol/AppChooser$AppInfoCache;La2dp/Vol/AppChooser$AppInfoCache;)I

    move-result v0

    return v0
.end method
