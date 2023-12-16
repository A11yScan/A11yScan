.class La2dp/Vol/PackagesChooser$PackageListAdapter$1;
.super Ljava/lang/Object;
.source "PackagesChooser.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/PackagesChooser$PackageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:La2dp/Vol/PackagesChooser$PackageListAdapter;

.field final synthetic val$ai:La2dp/Vol/PackagesChooser$AppInfoCache;

.field final synthetic val$box:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(La2dp/Vol/PackagesChooser$PackageListAdapter;La2dp/Vol/PackagesChooser$AppInfoCache;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$1"    # La2dp/Vol/PackagesChooser$PackageListAdapter;

    .prologue
    .line 159
    iput-object p1, p0, La2dp/Vol/PackagesChooser$PackageListAdapter$1;->this$1:La2dp/Vol/PackagesChooser$PackageListAdapter;

    iput-object p2, p0, La2dp/Vol/PackagesChooser$PackageListAdapter$1;->val$ai:La2dp/Vol/PackagesChooser$AppInfoCache;

    iput-object p3, p0, La2dp/Vol/PackagesChooser$PackageListAdapter$1;->val$box:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 164
    iget-object v0, p0, La2dp/Vol/PackagesChooser$PackageListAdapter$1;->val$ai:La2dp/Vol/PackagesChooser$AppInfoCache;

    iget-object v1, p0, La2dp/Vol/PackagesChooser$PackageListAdapter$1;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, La2dp/Vol/PackagesChooser$AppInfoCache;->setChecked(Z)V

    .line 166
    return-void
.end method
