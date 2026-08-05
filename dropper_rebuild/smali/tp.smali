.class public final Ltp;
.super Ls10;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ltk;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/pulse/live/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/pulse/live/ui/MainActivity;Lmc;I)V
    .locals 0

    .line 1
    iput p3, p0, Ltp;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Ltp;->f:Lcom/pulse/live/ui/MainActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ls10;-><init>(ILmc;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ltp;->e:I

    .line 2
    .line 3
    check-cast p1, Lhd;

    .line 4
    .line 5
    check-cast p2, Lmc;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1}, Ltp;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ltp;

    .line 15
    .line 16
    sget-object p1, Lqg;->j:Lqg;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ltp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Ltp;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ltp;

    .line 28
    .line 29
    sget-object p1, Lqg;->j:Lqg;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ltp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lmc;Ljava/lang/Object;)Lmc;
    .locals 1

    .line 1
    iget p2, p0, Ltp;->e:I

    .line 2
    .line 3
    iget-object p0, p0, Ltp;->f:Lcom/pulse/live/ui/MainActivity;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Ltp;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, p0, p1, v0}, Ltp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Ltp;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p2, p0, p1, v0}, Ltp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ltp;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p1, "App3 not configured"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :pswitch_0
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lsp;

    .line 21
    .line 22
    iget-object p0, p0, Ltp;->f:Lcom/pulse/live/ui/MainActivity;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lsp;-><init>(Lcom/pulse/live/ui/MainActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v1, Lvd;->u:[B

    .line 30
    .line 31
    invoke-static {v1}, Lvd;->c0([B)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lz8;->a:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lvd;->v:[B

    .line 41
    .line 42
    invoke-static {v1}, Lvd;->c0([B)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v3, Lvd;->w:[B

    .line 47
    .line 48
    invoke-static {v3}, Lvd;->c0([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/String;

    .line 53
    .line 54
    sget-object v5, Lvd;->x:[B

    .line 55
    .line 56
    invoke-static {v5}, Lvd;->c0([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v4, v5, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v6, Lvd;->z:[B

    .line 66
    .line 67
    invoke-static {v6}, Lvd;->c0([B)[B

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-direct {v5, v6, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/16 v7, 0x2000

    .line 92
    .line 93
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-direct {v2, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2}, Ld40;->k(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x1e

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lsp;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 127
    .line 128
    const-string v7, "AES"

    .line 129
    .line 130
    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    const-string v7, "GCM"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-ltz v4, :cond_0

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    move v1, v8

    .line 145
    :goto_0
    const/4 v4, 0x2

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 149
    .line 150
    const/16 v7, 0x80

    .line 151
    .line 152
    invoke-direct {v1, v7, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 160
    .line 161
    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 165
    .line 166
    .line 167
    :goto_1
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/16 v1, 0x50

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v1}, Lsp;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    new-instance v1, Ljava/io/File;

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance p0, Ljava/io/FileOutputStream;

    .line 193
    .line 194
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    .line 196
    .line 197
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 201
    .line 202
    .line 203
    const/16 p0, 0x64

    .line 204
    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p1, p0}, Lsp;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    return-object v1

    .line 213
    :catchall_0
    move-exception p1

    .line 214
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :catchall_1
    move-exception v0

    .line 216
    invoke-static {p0, p1}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :catchall_2
    move-exception p0

    .line 221
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 222
    :catchall_3
    move-exception p1

    .line 223
    invoke-static {v0, p0}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
