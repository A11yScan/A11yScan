.class final Ljp/beyond/bead/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final IMAGE_COMPRESS_QUALITY:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 176
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 183
    if-eqz v2, :cond_0

    .line 185
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 183
    if-eqz v2, :cond_0

    .line 185
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "load error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 183
    if-eqz v2, :cond_1

    .line 185
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 190
    :cond_1
    :goto_1
    throw v3

    .line 186
    :catch_2
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "load error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "load error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 89
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 93
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 94
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 107
    if-eqz v3, :cond_0

    .line 109
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 115
    :cond_0
    :goto_0
    if-eqz v1, :cond_8

    .line 117
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    move-object v2, v3

    .line 124
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 97
    .restart local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_4
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v2, :cond_2

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 115
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 117
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v4, 0x0

    .line 107
    if-eqz v2, :cond_3

    .line 109
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 115
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    .line 117
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 118
    :catch_4
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 107
    if-eqz v2, :cond_4

    .line 109
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 115
    :cond_4
    :goto_7
    if-eqz v1, :cond_1

    .line 117
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1

    .line 118
    :catch_7
    move-exception v0

    .line 119
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    :catch_8
    move-exception v0

    .line 111
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_8
    :try_start_c
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 107
    if-eqz v2, :cond_5

    .line 109
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 115
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    :goto_9
    if-eqz v1, :cond_1

    .line 117
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_1

    .line 118
    :catch_a
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 110
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :catch_b
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 107
    :goto_a
    if-eqz v2, :cond_6

    .line 109
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 115
    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    .line 117
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 122
    :cond_7
    :goto_c
    throw v5

    .line 110
    :catch_c
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v7, "load error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v7, "load error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "load error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .line 105
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_a

    .line 103
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_8

    .line 101
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_6

    .line 99
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_4

    .line 97
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x0

    .line 143
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 145
    const/16 v2, 0x64

    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const/4 p1, 0x0

    .line 153
    if-eqz v1, :cond_0

    .line 155
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v3, "save error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v2, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v3, "file not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    if-eqz v1, :cond_0

    .line 155
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 156
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v3, "save error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 153
    if-eqz v1, :cond_2

    .line 155
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    :cond_2
    :goto_1
    throw v2

    .line 156
    :catch_3
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v4, "save error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static saveFile(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/io/Serializable;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    const/4 v1, 0x0

    .line 51
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 52
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v1, :cond_2

    .line 63
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 69
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 71
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "file not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    if-eqz v1, :cond_3

    .line 63
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 69
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 71
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 61
    if-eqz v1, :cond_4

    .line 63
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 69
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    .line 71
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 72
    :catch_4
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 65
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 61
    :goto_6
    if-eqz v1, :cond_5

    .line 63
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 69
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 71
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 76
    :cond_6
    :goto_8
    throw v4

    .line 64
    :catch_6
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "save error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v6, "save error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljp/beyond/bead/Bead;->TAG:Ljava/lang/String;

    const-string v5, "save error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_0

    .line 59
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_6

    .line 57
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 55
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_2
.end method
