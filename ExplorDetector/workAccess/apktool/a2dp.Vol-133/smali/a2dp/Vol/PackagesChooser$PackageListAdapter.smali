.class public La2dp/Vol/PackagesChooser$PackageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PackagesChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/PackagesChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "La2dp/Vol/PackagesChooser$AppInfoCache;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic this$0:La2dp/Vol/PackagesChooser;


# direct methods
.method public constructor <init>(La2dp/Vol/PackagesChooser;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # La2dp/Vol/PackagesChooser;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, La2dp/Vol/PackagesChooser$PackageListAdapter;->this$0:La2dp/Vol/PackagesChooser;

    .line 143
    const/high16 v0, 0x7f040000

    invoke-static {p1}, La2dp/Vol/PackagesChooser;->access$000(La2dp/Vol/PackagesChooser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 144
    iput-object p2, p0, La2dp/Vol/PackagesChooser$PackageListAdapter;->c:Landroid/content/Context;

    .line 145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    iget-object v6, p0, La2dp/Vol/PackagesChooser$PackageListAdapter;->c:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 150
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040007

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 153
    .local v3, "iv_icon":Landroid/widget/ImageView;
    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 154
    .local v4, "tv_name":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, La2dp/Vol/PackagesChooser$PackageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2dp/Vol/PackagesChooser$AppInfoCache;

    .line 155
    .local v0, "ai":La2dp/Vol/PackagesChooser$AppInfoCache;
    invoke-virtual {v0}, La2dp/Vol/PackagesChooser$AppInfoCache;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {v0}, La2dp/Vol/PackagesChooser$AppInfoCache;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v6, 0x7f0a004c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 158
    .local v1, "box":Landroid/widget/CheckBox;
    invoke-virtual {v0}, La2dp/Vol/PackagesChooser$AppInfoCache;->isChecked()Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    new-instance v6, La2dp/Vol/PackagesChooser$PackageListAdapter$1;

    invoke-direct {v6, p0, v0, v1}, La2dp/Vol/PackagesChooser$PackageListAdapter$1;-><init>(La2dp/Vol/PackagesChooser$PackageListAdapter;La2dp/Vol/PackagesChooser$AppInfoCache;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    return-object v5
.end method
