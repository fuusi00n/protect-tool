.class public final Lme;
.super Ld4;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public c:Z

.field public d:Z

.field public e:Ls4;

.method public final q(Landroid/content/Context;)Ls4;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lme;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lme;->e:Ls4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Ld4;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lq00;

    .line 11
    .line 12
    iget-object v1, v0, Lq00;->c:Laj;

    .line 13
    .line 14
    iget v0, v0, Lq00;->a:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_0
    iget-boolean v2, p0, Lme;->c:Z

    .line 25
    .line 26
    iget-object v5, v1, Laj;->H:Lzi;

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    move v6, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget v6, v5, Lzi;->f:I

    .line 33
    .line 34
    :goto_1
    if-eqz v2, :cond_6

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    :goto_2
    move v2, v3

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iget v2, v5, Lzi;->d:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    if-nez v5, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    iget v2, v5, Lzi;->e:I

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_6
    if-eqz v0, :cond_8

    .line 52
    .line 53
    if-nez v5, :cond_7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_7
    iget v2, v5, Lzi;->b:I

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_8
    if-nez v5, :cond_9

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_9
    iget v2, v5, Lzi;->c:I

    .line 63
    .line 64
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Laj;->C(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Laj;->D:Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz v3, :cond_a

    .line 71
    .line 72
    sget v7, Liv;->visible_removing_fragment_view_tag:I

    .line 73
    .line 74
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_a

    .line 79
    .line 80
    iget-object v3, v1, Laj;->D:Landroid/view/ViewGroup;

    .line 81
    .line 82
    sget v7, Liv;->visible_removing_fragment_view_tag:I

    .line 83
    .line 84
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_a
    iget-object v1, v1, Laj;->D:Landroid/view/ViewGroup;

    .line 88
    .line 89
    if-eqz v1, :cond_b

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_b

    .line 96
    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_b
    if-nez v2, :cond_16

    .line 100
    .line 101
    if-eqz v6, :cond_16

    .line 102
    .line 103
    const/16 v1, 0x1001

    .line 104
    .line 105
    if-eq v6, v1, :cond_14

    .line 106
    .line 107
    const/16 v1, 0x2002

    .line 108
    .line 109
    if-eq v6, v1, :cond_12

    .line 110
    .line 111
    const/16 v1, 0x2005

    .line 112
    .line 113
    if-eq v6, v1, :cond_10

    .line 114
    .line 115
    const/16 v1, 0x1003

    .line 116
    .line 117
    if-eq v6, v1, :cond_e

    .line 118
    .line 119
    const/16 v1, 0x1004

    .line 120
    .line 121
    if-eq v6, v1, :cond_c

    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    :goto_4
    move v2, v0

    .line 125
    goto :goto_5

    .line 126
    :cond_c
    if-eqz v0, :cond_d

    .line 127
    .line 128
    const v0, 0x10100b8

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v0}, Ld40;->V(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_4

    .line 136
    :cond_d
    const v0, 0x10100b9

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v0}, Ld40;->V(Landroid/content/Context;I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_4

    .line 144
    :cond_e
    if-eqz v0, :cond_f

    .line 145
    .line 146
    sget v0, Lou;->fragment_fade_enter:I

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_f
    sget v0, Lou;->fragment_fade_exit:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_10
    if-eqz v0, :cond_11

    .line 153
    .line 154
    const v0, 0x10100ba

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0}, Ld40;->V(Landroid/content/Context;I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    goto :goto_4

    .line 162
    :cond_11
    const v0, 0x10100bb

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v0}, Ld40;->V(Landroid/content/Context;I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    goto :goto_4

    .line 170
    :cond_12
    if-eqz v0, :cond_13

    .line 171
    .line 172
    sget v0, Lou;->fragment_close_enter:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_13
    sget v0, Lou;->fragment_close_exit:I

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_14
    if-eqz v0, :cond_15

    .line 179
    .line 180
    sget v0, Lou;->fragment_open_enter:I

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_15
    sget v0, Lou;->fragment_open_exit:I

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_16
    :goto_5
    if-eqz v2, :cond_19

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "anim"

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_17

    .line 203
    .line 204
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_19

    .line 209
    .line 210
    new-instance v3, Ls4;

    .line 211
    .line 212
    invoke-direct {v3, v1}, Ls4;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    .line 214
    .line 215
    :goto_6
    move-object v5, v3

    .line 216
    goto :goto_7

    .line 217
    :catch_0
    move-exception p0

    .line 218
    throw p0

    .line 219
    :catch_1
    :cond_17
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-eqz v1, :cond_19

    .line 224
    .line 225
    new-instance v3, Ls4;

    .line 226
    .line 227
    invoke-direct {v3, v1}, Ls4;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catch_2
    move-exception v1

    .line 232
    if-nez v0, :cond_18

    .line 233
    .line 234
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-eqz p1, :cond_19

    .line 239
    .line 240
    new-instance v5, Ls4;

    .line 241
    .line 242
    invoke-direct {v5, p1}, Ls4;-><init>(Landroid/view/animation/Animation;)V

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_18
    throw v1

    .line 247
    :cond_19
    :goto_7
    iput-object v5, p0, Lme;->e:Ls4;

    .line 248
    .line 249
    iput-boolean v4, p0, Lme;->d:Z

    .line 250
    .line 251
    return-object v5
.end method
