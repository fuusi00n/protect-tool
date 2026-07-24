.class public abstract Ljy;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljy;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ljy;->b:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ljy;->c:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    invoke-static/range {v0 .. v6}, Ljy;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILyt;ZZ)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static b(Landroid/content/Context;ILandroid/util/TypedValue;ILyt;ZZ)Landroid/graphics/Typeface;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {v2, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v0, :cond_c

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v0, "res/"

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, -0x3

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    if-eqz p4, :cond_9

    .line 28
    .line 29
    invoke-virtual {p4, v10}, Lyt;->a(I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 35
    .line 36
    sget-object v1, Le40;->b:Lkp;

    .line 37
    .line 38
    invoke-static {v2, p1, v4, v0, p3}, Le40;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Lkp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/Typeface;

    .line 47
    .line 48
    const/4 v3, 0x5

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    if-eqz p4, :cond_1

    .line 52
    .line 53
    new-instance p0, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lp3;

    .line 63
    .line 64
    invoke-direct {p2, p4, v3, v0}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    move-object v9, v0

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_2
    if-eqz p6, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v5, ".xml"

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, v2}, Lnm;->E(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Loi;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    if-eqz p4, :cond_9

    .line 99
    .line 100
    invoke-virtual {p4, v10}, Lyt;->a(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 105
    .line 106
    move-object v0, p0

    .line 107
    move v3, p1

    .line 108
    move v6, p3

    .line 109
    move-object v7, p4

    .line 110
    move/from16 v8, p5

    .line 111
    .line 112
    invoke-static/range {v0 .. v8}, Le40;->a(Landroid/content/Context;Loi;Landroid/content/res/Resources;ILjava/lang/String;IILyt;Z)Landroid/graphics/Typeface;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    move-object v5, v4

    .line 118
    move-object v4, v2

    .line 119
    iget p2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 120
    .line 121
    sget-object v8, Le40;->a:Lzt;

    .line 122
    .line 123
    invoke-virtual {v8, p0, v4, p1, v5}, Lzt;->f(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Typeface;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    invoke-static {v4, p1, v5, p2, p3}, Le40;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {v1, p2, p0}, Lkp;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_6
    if-eqz p4, :cond_7

    .line 137
    .line 138
    if-eqz p0, :cond_8

    .line 139
    .line 140
    new-instance p2, Landroid/os/Handler;

    .line 141
    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 147
    .line 148
    .line 149
    new-instance p3, Lp3;

    .line 150
    .line 151
    invoke-direct {p3, p4, v3, p0}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_0
    move-object v9, p0

    .line 158
    goto :goto_1

    .line 159
    :cond_8
    invoke-virtual {p4, v10}, Lyt;->a(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    if-eqz p4, :cond_9

    .line 164
    .line 165
    invoke-virtual {p4, v10}, Lyt;->a(I)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_1
    if-nez v9, :cond_b

    .line 169
    .line 170
    if-nez p4, :cond_b

    .line 171
    .line 172
    if-eqz p6, :cond_a

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 176
    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string p3, "Font resource ID #0x"

    .line 184
    .line 185
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " could not be retrieved."

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_b
    :goto_2
    return-object v9

    .line 205
    :cond_c
    move-object v4, v2

    .line 206
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 207
    .line 208
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "Resource \""

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p3, "\" ("

    .line 227
    .line 228
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string p1, ") is not a Font: "

    .line 235
    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p0
.end method
