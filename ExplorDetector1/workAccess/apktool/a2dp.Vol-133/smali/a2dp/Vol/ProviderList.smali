.class public La2dp/Vol/ProviderList;
.super Landroid/app/ListActivity;
.source "ProviderList.java"


# static fields
.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String; = null

.field public static EXTRA_PROVIDER:Ljava/lang/String; = null

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final MI_TYPE_APPEND_VIEW:I = 0x2

.field public static final MI_TYPE_CUSTOM:I = 0x3

.field public static final MI_TYPE_STANDARD:I = 0x1

.field public static PROVIDER_GOOGLE_LISTEN:I

.field public static PROVIDER_HOMESCREEN:I

.field public static PROVIDER_HOMESCREEN2:I

.field public static PROVIDER_HTC_SENSE:I

.field public static PROVIDER_PANDORA:I

.field public static final P_CUSTOM_DATA_STRINGS:[Ljava/lang/String;

.field public static final P_DATA_KEYS:[Ljava/lang/String;

.field public static final P_EMPTY_LIST_MSGS:[Ljava/lang/String;

.field public static final P_MI_TYPES:[I

.field public static final P_PACKAGE_NAMES:[Ljava/lang/String;

.field public static final P_TITLE_KEYS:[Ljava/lang/String;

.field public static final P_URI_STRINGS:[Ljava/lang/String;

.field public static final P_WHERE_KEYS:[Ljava/lang/String;

.field public static final P_WINDOW_TITLES:[Ljava/lang/String;


# instance fields
.field private mListAdapter:Landroid/widget/CursorAdapter;

.field private mProvider:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    sput v2, La2dp/Vol/ProviderList;->PROVIDER_PANDORA:I

    .line 30
    sput v3, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN:I

    .line 31
    sput v4, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN2:I

    .line 32
    sput v5, La2dp/Vol/ProviderList;->PROVIDER_GOOGLE_LISTEN:I

    .line 33
    sput v6, La2dp/Vol/ProviderList;->PROVIDER_HTC_SENSE:I

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content://com.pandora.provider/stations"

    aput-object v1, v0, v2

    const-string v1, "content://com.android.launcher.settings/favorites"

    aput-object v1, v0, v3

    const-string v1, "content://com.android.launcher2.settings/favorites"

    aput-object v1, v0, v4

    const-string v1, "content://com.google.android.apps.listen.PodcastProvider/item"

    aput-object v1, v0, v5

    const-string v1, "content://com.htc.launcher.settings/favorites"

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_URI_STRINGS:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const-string v1, "http://listen.googlelabs.com/listen?id=@@"

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_CUSTOM_DATA_STRINGS:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.pandora.android"

    aput-object v1, v0, v2

    const-string v1, "com.android.launcher"

    aput-object v1, v0, v3

    const-string v1, "com.android.launcher2"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.apps.listen"

    aput-object v1, v0, v5

    const-string v1, "com.htc.launcher"

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_PACKAGE_NAMES:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stationName"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stationToken"

    aput-object v1, v0, v2

    const-string v1, "intent"

    aput-object v1, v0, v3

    const-string v1, "intent"

    aput-object v1, v0, v4

    const-string v1, "guid"

    aput-object v1, v0, v5

    const-string v1, "intent"

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_DATA_KEYS:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    const-string v1, "intent!=\"\""

    aput-object v1, v0, v3

    const-string v1, "intent!=\"\""

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v5

    const-string v1, "intent!=\"\""

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_WHERE_KEYS:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, La2dp/Vol/ProviderList;->P_MI_TYPES:[I

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Select a Pandora Favorite..."

    aput-object v1, v0, v2

    const-string v1, "Select a Shortcut from your Home Screen..."

    aput-object v1, v0, v3

    const-string v1, "Select a Shortcut from your Home Screen..."

    aput-object v1, v0, v4

    const-string v1, "Select a Feed from Google\'s Listen"

    aput-object v1, v0, v5

    const-string v1, "Select a Shortcut from your Home Screen..."

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_WINDOW_TITLES:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "It looks like you don\'t have any Pandora Radio stations set up. This usually means either Pandora is not installed or you haven\'t logged into it yet. Please try starting Pandora manually and make sure your stations show up, then try again."

    aput-object v1, v0, v2

    const-string v1, "It looks like there was an error reading the shortcuts from your home screen (or you don\'t have any installed)."

    aput-object v1, v0, v3

    const-string v1, "It looks like there was an error reading the shortcuts from your home screen (or you don\'t have any installed)."

    aput-object v1, v0, v4

    const-string v1, "It looks like you don\'t have any subscriptions set up in Google\'s Listen. Please close AppAlarm and make sure your subscriptions show up in Listen."

    aput-object v1, v0, v5

    const-string v1, "It looks like there was an error reading the shortcuts from your home screen (or you don\'t have any installed)."

    aput-object v1, v0, v6

    sput-object v0, La2dp/Vol/ProviderList;->P_EMPTY_LIST_MSGS:[Ljava/lang/String;

    .line 110
    const-string v0, "extra_provider"

    sput-object v0, La2dp/Vol/ProviderList;->EXTRA_PROVIDER:Ljava/lang/String;

    .line 111
    const-string v0, "extra_package_name"

    sput-object v0, La2dp/Vol/ProviderList;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    return-void

    .line 84
    :array_0
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getSelectedIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "nI":Landroid/content/Intent;
    sget-object v4, La2dp/Vol/ProviderList;->P_MI_TYPES:[I

    iget v5, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 231
    :goto_0
    return-object v3

    .line 210
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "nI":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v1    # "nI":Landroid/content/Intent;
    sget-object v3, La2dp/Vol/ProviderList;->P_URI_STRINGS:[Ljava/lang/String;

    iget v4, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v3, v1

    .line 212
    goto :goto_0

    .line 215
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "nI":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v1    # "nI":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 223
    .local v2, "newData":Ljava/lang/String;
    :try_start_1
    sget-object v3, La2dp/Vol/ProviderList;->P_CUSTOM_DATA_STRINGS:[Ljava/lang/String;

    iget v4, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v3, v3, v4

    const-string v4, "@@"

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 227
    :goto_1
    invoke-virtual {p0}, La2dp/Vol/ProviderList;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v3, v1

    .line 229
    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private loadList()V
    .locals 9

    .prologue
    .line 131
    const/4 v6, 0x0

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, La2dp/Vol/ProviderList;->P_URI_STRINGS:[Ljava/lang/String;

    iget v1, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v0, v0, v1

    .line 134
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    sget-object v4, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    iget v5, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v4, v4, v5

    aput-object v4, v2, v0

    sget-object v0, La2dp/Vol/ProviderList;->P_WHERE_KEYS:[Ljava/lang/String;

    iget v4, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v3, v0, v4

    const/4 v4, 0x0

    sget-object v0, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    iget v5, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v5, v0, v5

    move-object v0, p0

    .line 133
    invoke-virtual/range {v0 .. v5}, La2dp/Vol/ProviderList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 141
    .end local v6    # "c":Landroid/database/Cursor;
    .local v3, "c":Landroid/database/Cursor;
    if-nez v3, :cond_2

    .line 142
    :try_start_1
    iget v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    sget v1, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN:I

    if-ne v0, v1, :cond_1

    .line 143
    const-string v0, "AppAlarm"

    const-string v1, "Error reading from Launcher1, trying Launcher2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget v0, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN2:I

    iput v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    .line 145
    invoke-direct {p0}, La2dp/Vol/ProviderList;->loadList()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    sget v1, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN2:I

    if-ne v0, v1, :cond_0

    .line 147
    const-string v0, "AppAlarm"

    const-string v1, "Error reading from Launcher2, trying Sense"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v0, La2dp/Vol/ProviderList;->PROVIDER_HTC_SENSE:I

    iput v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    .line 149
    invoke-direct {p0}, La2dp/Vol/ProviderList;->loadList()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040008

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v5, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    iget v8, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v5, v5, v8

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v8, 0x7f0a004d

    aput v8, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, La2dp/Vol/ProviderList;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 158
    iget-object v0, p0, La2dp/Vol/ProviderList;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, La2dp/Vol/ProviderList;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 163
    .end local v3    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v7

    move-object v3, v6

    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v3    # "c":Landroid/database/Cursor;
    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 170
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, La2dp/Vol/ProviderList;->setContentView(I)V

    .line 171
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    :try_start_0
    iget-object v0, p0, La2dp/Vol/ProviderList;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, La2dp/Vol/ProviderList;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, La2dp/Vol/ProviderList;->setContentView(I)V

    .line 120
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, La2dp/Vol/ProviderList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, La2dp/Vol/ProviderList;->EXTRA_PROVIDER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    .line 124
    sget-object v0, La2dp/Vol/ProviderList;->P_WINDOW_TITLES:[Ljava/lang/String;

    iget v1, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La2dp/Vol/ProviderList;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0}, La2dp/Vol/ProviderList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, La2dp/Vol/ProviderList;->P_EMPTY_LIST_MSGS:[Ljava/lang/String;

    iget v2, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, La2dp/Vol/ProviderList;->loadList()V

    .line 128
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 181
    invoke-virtual {p0}, La2dp/Vol/ProviderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, La2dp/Vol/ProviderList;->P_URI_STRINGS:[Ljava/lang/String;

    iget v2, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    iget v5, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, La2dp/Vol/ProviderList;->P_DATA_KEYS:[Ljava/lang/String;

    iget v5, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    sget-object v0, La2dp/Vol/ProviderList;->P_TITLE_KEYS:[Ljava/lang/String;

    iget v1, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "title":Ljava/lang/String;
    sget-object v0, La2dp/Vol/ProviderList;->P_DATA_KEYS:[Ljava/lang/String;

    iget v1, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "data":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v8, "rtrIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    sget v1, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN:I

    if-eq v0, v1, :cond_0

    iget v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    sget v1, La2dp/Vol/ProviderList;->PROVIDER_HOMESCREEN2:I

    if-eq v0, v1, :cond_0

    iget v0, p0, La2dp/Vol/ProviderList;->mProvider:I

    sget v1, La2dp/Vol/ProviderList;->PROVIDER_HTC_SENSE:I

    if-eq v0, v1, :cond_0

    .line 195
    sget-object v0, La2dp/Vol/ProviderList;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    sget-object v1, La2dp/Vol/ProviderList;->P_PACKAGE_NAMES:[Ljava/lang/String;

    iget v2, p0, La2dp/Vol/ProviderList;->mProvider:I

    aget-object v1, v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-direct {p0, v7}, La2dp/Vol/ProviderList;->getSelectedIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v8}, La2dp/Vol/ProviderList;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, La2dp/Vol/ProviderList;->finish()V

    .line 203
    return-void
.end method
