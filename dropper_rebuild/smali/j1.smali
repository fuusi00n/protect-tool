.class public final Lj1;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    .line 1
    const/16 p3, 0x9

    .line 2
    .line 3
    iput p3, p0, Lj1;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lj1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lj1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 15
    iput p2, p0, Lj1;->a:I

    iput-object p1, p0, Lj1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 13
    iput p3, p0, Lj1;->a:I

    iput-object p1, p0, Lj1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Loe;Ljava/util/ArrayList;Lq00;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lj1;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lj1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lj1;->c:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 10
    .line 11
    iget-object v0, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:La60;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, La60;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lj1;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/view/View;

    .line 24
    .line 25
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lki;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lki;->accept(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    move-object v0, v2

    .line 40
    check-cast v0, Lwn;

    .line 41
    .line 42
    iget-object v3, v0, Lwn;->c:Lcd;

    .line 43
    .line 44
    :cond_1
    :try_start_0
    iget-object v2, p0, Lj1;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Ljava/lang/Runnable;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    sget-object v4, Ldh;->a:Ldh;

    .line 54
    .line 55
    invoke-static {v4, v2}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0}, Lwn;->f()Ljava/lang/Runnable;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-object v2, p0, Lj1;->b:Ljava/lang/Object;

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    const/16 v2, 0x10

    .line 70
    .line 71
    if-lt v1, v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Lcd;->e()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3, v0, p0}, Lcd;->d(Lyc;Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void

    .line 83
    :pswitch_2
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lf8;

    .line 86
    .line 87
    check-cast v2, Lnl;

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lf8;->y(Lcd;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_3
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Ljava/util/ArrayList;

    .line 96
    .line 97
    check-cast v2, Lq00;

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object p0, v2, Lq00;->c:Laj;

    .line 109
    .line 110
    iget-object p0, p0, Laj;->E:Landroid/view/View;

    .line 111
    .line 112
    iget v0, v2, Lq00;->a:I

    .line 113
    .line 114
    invoke-static {p0, v0}, Lk00;->a(Landroid/view/View;I)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void

    .line 118
    :pswitch_4
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lo0;

    .line 121
    .line 122
    check-cast v2, Landroid/graphics/Typeface;

    .line 123
    .line 124
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Lyt;

    .line 127
    .line 128
    if-eqz p0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lyt;->p(Landroid/graphics/Typeface;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void

    .line 134
    :pswitch_5
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 135
    .line 136
    :try_start_1
    sget-object v0, Lv1;->d:Ljava/lang/reflect/Method;

    .line 137
    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .line 142
    const-string v3, "AppCompat recreation"

    .line 143
    .line 144
    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    sget-object v0, Lv1;->e:Ljava/lang/reflect/Method;

    .line 153
    .line 154
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-class v1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    if-ne v0, v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v1, "Unable to stop"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    throw p0

    .line 193
    :catchall_1
    :cond_7
    :goto_2
    return-void

    .line 194
    :pswitch_6
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p0, Landroid/app/Application;

    .line 197
    .line 198
    check-cast v2, Lu1;

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_7
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Lu1;

    .line 207
    .line 208
    iput-object v2, p0, Lu1;->a:Ljava/lang/Object;

    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_8
    iget-object p0, p0, Lj1;->b:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p0, Lh1;

    .line 214
    .line 215
    check-cast v2, Ll1;

    .line 216
    .line 217
    iget-object v0, v2, Ll1;->c:Ler;

    .line 218
    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    iget-object v3, v0, Ler;->e:Lcr;

    .line 222
    .line 223
    if-eqz v3, :cond_8

    .line 224
    .line 225
    invoke-interface {v3, v0}, Lcr;->h(Ler;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    iget-object v0, v2, Ll1;->h:Lxr;

    .line 229
    .line 230
    check-cast v0, Landroid/view/View;

    .line 231
    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_b

    .line 239
    .line 240
    invoke-virtual {p0}, Lpr;->b()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    iget-object v0, p0, Lpr;->e:Landroid/view/View;

    .line 248
    .line 249
    if-nez v0, :cond_a

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_a
    invoke-virtual {p0, v1, v1, v1, v1}, Lpr;->d(IIZZ)V

    .line 253
    .line 254
    .line 255
    :goto_3
    iput-object p0, v2, Ll1;->s:Lh1;

    .line 256
    .line 257
    :cond_b
    :goto_4
    const/4 p0, 0x0

    .line 258
    iput-object p0, v2, Ll1;->u:Lj1;

    .line 259
    .line 260
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
