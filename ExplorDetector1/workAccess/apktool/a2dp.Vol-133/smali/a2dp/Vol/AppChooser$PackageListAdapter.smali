.class public La2dp/Vol/AppChooser$PackageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "La2dp/Vol/AppChooser$AppInfoCache;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method public constructor <init>(La2dp/Vol/AppChooser;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # La2dp/Vol/AppChooser;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    iput-object p1, p0, La2dp/Vol/AppChooser$PackageListAdapter;->this$0:La2dp/Vol/AppChooser;

    .line 210
    const v0, 0x7f040002

    invoke-static {p1}, La2dp/Vol/AppChooser;->access$100(La2dp/Vol/AppChooser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 211
    iput-object p2, p0, La2dp/Vol/AppChooser$PackageListAdapter;->c:Landroid/content/Context;

    .line 212
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    iget-object v5, p0, La2dp/Vol/AppChooser$PackageListAdapter;->c:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 217
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040002

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 220
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 221
    .local v2, "iv_icon":Landroid/widget/ImageView;
    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 222
    .local v3, "tv_name":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, La2dp/Vol/AppChooser$PackageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/AppChooser$AppInfoCache;

    .line 223
    .local v0, "ai":La2dp/Vol/AppChooser$AppInfoCache;
    invoke-virtual {v0}, La2dp/Vol/AppChooser$AppInfoCache;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {v0}, La2dp/Vol/AppChooser$AppInfoCache;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-object v4
.end method
